import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_args.dart';
import 'bucket_replication_config_rule.dart';
import 'bucket_replication_config_state.dart';

/// Provides an independent configuration resource for S3 bucket [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html).
///
/// &gt; **NOTE:** S3 Buckets only support a single replication configuration. Declaring multiple `aws.s3.BucketReplicationConfig` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Using replication configuration
///
/// ### Terraform AWS Provider v5 (and below)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const replicationRole = new aws.iam.Role("replication", {
///     name: "tf-iam-role-replication-12345",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const destination = new aws.s3.Bucket("destination", {bucket: "tf-test-bucket-destination-12345"});
/// const source = new aws.s3.Bucket("source", {bucket: "tf-test-bucket-source-12345"});
/// const replication = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:GetReplicationConfiguration",
///                 "s3:ListBucket",
///             ],
///             resources: [source.arn],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:GetObjectVersionForReplication",
///                 "s3:GetObjectVersionAcl",
///                 "s3:GetObjectVersionTagging",
///             ],
///             resources: [pulumi.interpolate`${source.arn}/*`],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:ReplicateObject",
///                 "s3:ReplicateDelete",
///                 "s3:ReplicateTags",
///             ],
///             resources: [pulumi.interpolate`${destination.arn}/*`],
///         },
///     ],
/// });
/// const replicationPolicy = new aws.iam.Policy("replication", {
///     name: "tf-iam-role-policy-replication-12345",
///     policy: replication.json,
/// });
/// const replicationRolePolicyAttachment = new aws.iam.RolePolicyAttachment("replication", {
///     role: replicationRole.name,
///     policyArn: replicationPolicy.arn,
/// });
/// const destinationBucketVersioning = new aws.s3.BucketVersioning("destination", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: destination.id,
/// });
/// const sourceBucketAcl = new aws.s3.BucketAcl("source_bucket_acl", {
///     bucket: source.id,
///     acl: "private",
/// });
/// const sourceBucketVersioning = new aws.s3.BucketVersioning("source", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: source.id,
/// });
/// const replicationBucketReplicationConfig = new aws.s3.BucketReplicationConfig("replication", {
///     rules: [{
///         filter: {
///             prefix: "example",
///         },
///         destination: {
///             bucket: destination.arn,
///             storageClass: "STANDARD",
///         },
///         id: "examplerule",
///         status: "Enabled",
///     }],
///     role: replicationRole.arn,
///     bucket: source.id,
/// }, {
///     dependsOn: [sourceBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// replication_role = aws.iam.Role("replication",
///     name="tf-iam-role-replication-12345",
///     assume_role_policy=assume_role.json)
/// destination = aws.s3.Bucket("destination", bucket="tf-test-bucket-destination-12345")
/// source = aws.s3.Bucket("source", bucket="tf-test-bucket-source-12345")
/// replication = aws.iam.get_policy_document_output(statements=[
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:GetReplicationConfiguration",
///             "s3:ListBucket",
///         ],
///         "resources": [source.arn],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:GetObjectVersionForReplication",
///             "s3:GetObjectVersionAcl",
///             "s3:GetObjectVersionTagging",
///         ],
///         "resources": [source.arn.apply(lambda arn: f"{arn}/*")],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:ReplicateObject",
///             "s3:ReplicateDelete",
///             "s3:ReplicateTags",
///         ],
///         "resources": [destination.arn.apply(lambda arn: f"{arn}/*")],
///     },
/// ])
/// replication_policy = aws.iam.Policy("replication",
///     name="tf-iam-role-policy-replication-12345",
///     policy=replication.json)
/// replication_role_policy_attachment = aws.iam.RolePolicyAttachment("replication",
///     role=replication_role.name,
///     policy_arn=replication_policy.arn)
/// destination_bucket_versioning = aws.s3.BucketVersioning("destination",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=destination.id)
/// source_bucket_acl = aws.s3.BucketAcl("source_bucket_acl",
///     bucket=source.id,
///     acl="private")
/// source_bucket_versioning = aws.s3.BucketVersioning("source",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=source.id)
/// replication_bucket_replication_config = aws.s3.BucketReplicationConfig("replication",
///     rules=[{
///         "filter": {
///             "prefix": "example",
///         },
///         "destination": {
///             "bucket": destination.arn,
///             "storage_class": "STANDARD",
///         },
///         "id": "examplerule",
///         "status": "Enabled",
///     }],
///     role=replication_role.arn,
///     bucket=source.id,
///     opts = pulumi.ResourceOptions(depends_on=[source_bucket_versioning]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "s3.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var replicationRole = new Aws.Iam.Role("replication", new()
///     {
///         Name = "tf-iam-role-replication-12345",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var destination = new Aws.S3.Bucket("destination", new()
///     {
///         BucketName = "tf-test-bucket-destination-12345",
///     });
///
///     var source = new Aws.S3.Bucket("source", new()
///     {
///         BucketName = "tf-test-bucket-source-12345",
///     });
///
///     var replication = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetReplicationConfiguration",
///                     "s3:ListBucket",
///                 },
///                 Resources = new[]
///                 {
///                     source.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetObjectVersionForReplication",
///                     "s3:GetObjectVersionAcl",
///                     "s3:GetObjectVersionTagging",
///                 },
///                 Resources = new[]
///                 {
///                     $"{source.Arn}/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:ReplicateObject",
///                     "s3:ReplicateDelete",
///                     "s3:ReplicateTags",
///                 },
///                 Resources = new[]
///                 {
///                     $"{destination.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var replicationPolicy = new Aws.Iam.Policy("replication", new()
///     {
///         Name = "tf-iam-role-policy-replication-12345",
///         PolicyDocument = replication.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var replicationRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("replication", new()
///     {
///         Role = replicationRole.Name,
///         PolicyArn = replicationPolicy.Arn,
///     });
///
///     var destinationBucketVersioning = new Aws.S3.BucketVersioning("destination", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = destination.Id,
///     });
///
///     var sourceBucketAcl = new Aws.S3.BucketAcl("source_bucket_acl", new()
///     {
///         Bucket = source.Id,
///         Acl = "private",
///     });
///
///     var sourceBucketVersioning = new Aws.S3.BucketVersioning("source", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = source.Id,
///     });
///
///     var replicationBucketReplicationConfig = new Aws.S3.BucketReplicationConfig("replication", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "example",
///                 },
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = destination.Arn,
///                     StorageClass = "STANDARD",
///                 },
///                 Id = "examplerule",
///                 Status = "Enabled",
///             },
///         },
///         Role = replicationRole.Arn,
///         Bucket = source.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sourceBucketVersioning,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"s3.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		replicationRole, err := iam.NewRole(ctx, "replication", &iam.RoleArgs{
/// 			Name:             pulumi.String("tf-iam-role-replication-12345"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := s3.NewBucket(ctx, "destination", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket-destination-12345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := s3.NewBucket(ctx, "source", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket-source-12345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		replication := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetReplicationConfiguration"),
/// 						pulumi.String("s3:ListBucket"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						source.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetObjectVersionForReplication"),
/// 						pulumi.String("s3:GetObjectVersionAcl"),
/// 						pulumi.String("s3:GetObjectVersionTagging"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						source.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:ReplicateObject"),
/// 						pulumi.String("s3:ReplicateDelete"),
/// 						pulumi.String("s3:ReplicateTags"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						destination.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		replicationPolicy, err := iam.NewPolicy(ctx, "replication", &iam.PolicyArgs{
/// 			Name:   pulumi.String("tf-iam-role-policy-replication-12345"),
/// 			Policy: replication.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "replication", &iam.RolePolicyAttachmentArgs{
/// 			Role:      replicationRole.Name,
/// 			PolicyArn: replicationPolicy.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketVersioning(ctx, "destination", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: destination.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "source_bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: source.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceBucketVersioning, err := s3.NewBucketVersioning(ctx, "source", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: source.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "replication", &s3.BucketReplicationConfigArgs{
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("example"),
/// 					},
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       destination.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 					Id:     pulumi.String("examplerule"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Role:   replicationRole.Arn,
/// 			Bucket: source.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sourceBucketVersioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["s3.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "replication" {
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:GetReplicationConfiguration", "s3:ListBucket"]
///     resources = [aws_s3_bucket.source.arn]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:GetObjectVersionForReplication", "s3:GetObjectVersionAcl", "s3:GetObjectVersionTagging"]
///     resources = ["${aws_s3_bucket.source.arn}/*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:ReplicateObject", "s3:ReplicateDelete", "s3:ReplicateTags"]
///     resources = ["${aws_s3_bucket.destination.arn}/*"]
///   }
/// }
///
/// resource "aws_iam_role" "replication" {
///   name               = "tf-iam-role-replication-12345"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_policy" "replication" {
///   name   = "tf-iam-role-policy-replication-12345"
///   policy = data.aws_iam_getpolicydocument.replication.json
/// }
/// resource "aws_iam_rolepolicyattachment" "replication" {
///   role       = aws_iam_role.replication.name
///   policy_arn = aws_iam_policy.replication.arn
/// }
/// resource "aws_s3_bucket" "destination" {
///   bucket = "tf-test-bucket-destination-12345"
/// }
/// resource "aws_s3_bucketversioning" "destination" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.destination.id
/// }
/// resource "aws_s3_bucket" "source" {
///   bucket = "tf-test-bucket-source-12345"
/// }
/// resource "aws_s3_bucketacl" "source_bucket_acl" {
///   bucket = aws_s3_bucket.source.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketversioning" "source" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.source.id
/// }
/// resource "aws_s3_bucketreplicationconfig" "replication" {
///   depends_on = [aws_s3_bucketversioning.source]
///   rules {
///     filter = {
///       prefix = "example"
///     }
///     destination = {
///       bucket        = aws_s3_bucket.destination.arn
///       storage_class = "STANDARD"
///     }
///     id     = "examplerule"
///     status = "Enabled"
///   }
///   role   = aws_iam_role.replication.arn
///   bucket = aws_s3_bucket.source.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketReplicationConfig;
/// import com.pulumi.aws.s3.BucketReplicationConfigArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleDestinationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var replicationRole = new Role("replicationRole", RoleArgs.builder()
///             .name("tf-iam-role-replication-12345")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var destination = new Bucket("destination", BucketArgs.builder()
///             .bucket("tf-test-bucket-destination-12345")
///             .build());
///
///         var source = new Bucket("source", BucketArgs.builder()
///             .bucket("tf-test-bucket-source-12345")
///             .build());
///
///         final var replication = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetReplicationConfiguration",
///                         "s3:ListBucket")
///                     .resources(source.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetObjectVersionForReplication",
///                         "s3:GetObjectVersionAcl",
///                         "s3:GetObjectVersionTagging")
///                     .resources(source.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:ReplicateObject",
///                         "s3:ReplicateDelete",
///                         "s3:ReplicateTags")
///                     .resources(destination.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build())
///             .build());
///
///         var replicationPolicy = new Policy("replicationPolicy", PolicyArgs.builder()
///             .name("tf-iam-role-policy-replication-12345")
///             .policy(replication.applyValue(_replication -> _replication.json()))
///             .build());
///
///         var replicationRolePolicyAttachment = new RolePolicyAttachment("replicationRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(replicationRole.name())
///             .policyArn(replicationPolicy.arn())
///             .build());
///
///         var destinationBucketVersioning = new BucketVersioning("destinationBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(destination.id())
///             .build());
///
///         var sourceBucketAcl = new BucketAcl("sourceBucketAcl", BucketAclArgs.builder()
///             .bucket(source.id())
///             .acl("private")
///             .build());
///
///         var sourceBucketVersioning = new BucketVersioning("sourceBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(source.id())
///             .build());
///
///         var replicationBucketReplicationConfig = new BucketReplicationConfig("replicationBucketReplicationConfig", BucketReplicationConfigArgs.builder()
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("example")
///                     .build())
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(destination.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .id("examplerule")
///                 .status("Enabled")
///                 .build())
///             .role(replicationRole.arn())
///             .bucket(source.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sourceBucketVersioning)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicationRole:
///     type: aws:iam:Role
///     name: replication
///     properties:
///       name: tf-iam-role-replication-12345
///       assumeRolePolicy: ${assumeRole.json}
///   replicationPolicy:
///     type: aws:iam:Policy
///     name: replication
///     properties:
///       name: tf-iam-role-policy-replication-12345
///       policy: ${replication.json}
///   replicationRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: replication
///     properties:
///       role: ${replicationRole.name}
///       policyArn: ${replicationPolicy.arn}
///   destination:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket-destination-12345
///   destinationBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: destination
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${destination.id}
///   source:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket-source-12345
///   sourceBucketAcl:
///     type: aws:s3:BucketAcl
///     name: source_bucket_acl
///     properties:
///       bucket: ${source.id}
///       acl: private
///   sourceBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: source
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${source.id}
///   replicationBucketReplicationConfig:
///     type: aws:s3:BucketReplicationConfig
///     name: replication
///     properties:
///       rules:
///         - filter:
///             prefix: example
///           destination:
///             bucket: ${destination.arn}
///             storageClass: STANDARD
///           id: examplerule
///           status: Enabled
///       role: ${replicationRole.arn}
///       bucket: ${source.id}
///     options:
///       dependsOn:
///         - ${sourceBucketVersioning}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   replication:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - s3:GetReplicationConfiguration
///               - s3:ListBucket
///             resources:
///               - ${source.arn}
///           - effect: Allow
///             actions:
///               - s3:GetObjectVersionForReplication
///               - s3:GetObjectVersionAcl
///               - s3:GetObjectVersionTagging
///             resources:
///               - ${source.arn}/*
///           - effect: Allow
///             actions:
///               - s3:ReplicateObject
///               - s3:ReplicateDelete
///               - s3:ReplicateTags
///             resources:
///               - ${destination.arn}/*
/// ```
///
///
/// ### Terraform AWS Provider v6 (and above)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const replicationRole = new aws.iam.Role("replication", {
///     name: "tf-iam-role-replication-12345",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const destination = new aws.s3.Bucket("destination", {bucket: "tf-test-bucket-destination-12345"});
/// const source = new aws.s3.Bucket("source", {
///     region: "eu-central-1",
///     bucket: "tf-test-bucket-source-12345",
/// });
/// const replication = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:GetReplicationConfiguration",
///                 "s3:ListBucket",
///             ],
///             resources: [source.arn],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:GetObjectVersionForReplication",
///                 "s3:GetObjectVersionAcl",
///                 "s3:GetObjectVersionTagging",
///             ],
///             resources: [pulumi.interpolate`${source.arn}/*`],
///         },
///         {
///             effect: "Allow",
///             actions: [
///                 "s3:ReplicateObject",
///                 "s3:ReplicateDelete",
///                 "s3:ReplicateTags",
///             ],
///             resources: [pulumi.interpolate`${destination.arn}/*`],
///         },
///     ],
/// });
/// const replicationPolicy = new aws.iam.Policy("replication", {
///     name: "tf-iam-role-policy-replication-12345",
///     policy: replication.json,
/// });
/// const replicationRolePolicyAttachment = new aws.iam.RolePolicyAttachment("replication", {
///     role: replicationRole.name,
///     policyArn: replicationPolicy.arn,
/// });
/// const destinationBucketVersioning = new aws.s3.BucketVersioning("destination", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: destination.id,
/// });
/// const sourceBucketAcl = new aws.s3.BucketAcl("source_bucket_acl", {
///     region: "eu-central-1",
///     bucket: source.id,
///     acl: "private",
/// });
/// const sourceBucketVersioning = new aws.s3.BucketVersioning("source", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     region: "eu-central-1",
///     bucket: source.id,
/// });
/// const replicationBucketReplicationConfig = new aws.s3.BucketReplicationConfig("replication", {
///     rules: [{
///         filter: {
///             prefix: "example",
///         },
///         destination: {
///             bucket: destination.arn,
///             storageClass: "STANDARD",
///         },
///         id: "examplerule",
///         status: "Enabled",
///     }],
///     region: "eu-central-1",
///     role: replicationRole.arn,
///     bucket: source.id,
/// }, {
///     dependsOn: [sourceBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// replication_role = aws.iam.Role("replication",
///     name="tf-iam-role-replication-12345",
///     assume_role_policy=assume_role.json)
/// destination = aws.s3.Bucket("destination", bucket="tf-test-bucket-destination-12345")
/// source = aws.s3.Bucket("source",
///     region="eu-central-1",
///     bucket="tf-test-bucket-source-12345")
/// replication = aws.iam.get_policy_document_output(statements=[
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:GetReplicationConfiguration",
///             "s3:ListBucket",
///         ],
///         "resources": [source.arn],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:GetObjectVersionForReplication",
///             "s3:GetObjectVersionAcl",
///             "s3:GetObjectVersionTagging",
///         ],
///         "resources": [source.arn.apply(lambda arn: f"{arn}/*")],
///     },
///     {
///         "effect": "Allow",
///         "actions": [
///             "s3:ReplicateObject",
///             "s3:ReplicateDelete",
///             "s3:ReplicateTags",
///         ],
///         "resources": [destination.arn.apply(lambda arn: f"{arn}/*")],
///     },
/// ])
/// replication_policy = aws.iam.Policy("replication",
///     name="tf-iam-role-policy-replication-12345",
///     policy=replication.json)
/// replication_role_policy_attachment = aws.iam.RolePolicyAttachment("replication",
///     role=replication_role.name,
///     policy_arn=replication_policy.arn)
/// destination_bucket_versioning = aws.s3.BucketVersioning("destination",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=destination.id)
/// source_bucket_acl = aws.s3.BucketAcl("source_bucket_acl",
///     region="eu-central-1",
///     bucket=source.id,
///     acl="private")
/// source_bucket_versioning = aws.s3.BucketVersioning("source",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     region="eu-central-1",
///     bucket=source.id)
/// replication_bucket_replication_config = aws.s3.BucketReplicationConfig("replication",
///     rules=[{
///         "filter": {
///             "prefix": "example",
///         },
///         "destination": {
///             "bucket": destination.arn,
///             "storage_class": "STANDARD",
///         },
///         "id": "examplerule",
///         "status": "Enabled",
///     }],
///     region="eu-central-1",
///     role=replication_role.arn,
///     bucket=source.id,
///     opts = pulumi.ResourceOptions(depends_on=[source_bucket_versioning]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "s3.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var replicationRole = new Aws.Iam.Role("replication", new()
///     {
///         Name = "tf-iam-role-replication-12345",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var destination = new Aws.S3.Bucket("destination", new()
///     {
///         BucketName = "tf-test-bucket-destination-12345",
///     });
///
///     var source = new Aws.S3.Bucket("source", new()
///     {
///         Region = "eu-central-1",
///         BucketName = "tf-test-bucket-source-12345",
///     });
///
///     var replication = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetReplicationConfiguration",
///                     "s3:ListBucket",
///                 },
///                 Resources = new[]
///                 {
///                     source.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetObjectVersionForReplication",
///                     "s3:GetObjectVersionAcl",
///                     "s3:GetObjectVersionTagging",
///                 },
///                 Resources = new[]
///                 {
///                     $"{source.Arn}/*",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:ReplicateObject",
///                     "s3:ReplicateDelete",
///                     "s3:ReplicateTags",
///                 },
///                 Resources = new[]
///                 {
///                     $"{destination.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var replicationPolicy = new Aws.Iam.Policy("replication", new()
///     {
///         Name = "tf-iam-role-policy-replication-12345",
///         PolicyDocument = replication.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var replicationRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("replication", new()
///     {
///         Role = replicationRole.Name,
///         PolicyArn = replicationPolicy.Arn,
///     });
///
///     var destinationBucketVersioning = new Aws.S3.BucketVersioning("destination", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = destination.Id,
///     });
///
///     var sourceBucketAcl = new Aws.S3.BucketAcl("source_bucket_acl", new()
///     {
///         Region = "eu-central-1",
///         Bucket = source.Id,
///         Acl = "private",
///     });
///
///     var sourceBucketVersioning = new Aws.S3.BucketVersioning("source", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Region = "eu-central-1",
///         Bucket = source.Id,
///     });
///
///     var replicationBucketReplicationConfig = new Aws.S3.BucketReplicationConfig("replication", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "example",
///                 },
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = destination.Arn,
///                     StorageClass = "STANDARD",
///                 },
///                 Id = "examplerule",
///                 Status = "Enabled",
///             },
///         },
///         Region = "eu-central-1",
///         Role = replicationRole.Arn,
///         Bucket = source.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             sourceBucketVersioning,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"s3.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		replicationRole, err := iam.NewRole(ctx, "replication", &iam.RoleArgs{
/// 			Name:             pulumi.String("tf-iam-role-replication-12345"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		destination, err := s3.NewBucket(ctx, "destination", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket-destination-12345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := s3.NewBucket(ctx, "source", &s3.BucketArgs{
/// 			Region: pulumi.String("eu-central-1"),
/// 			Bucket: pulumi.String("tf-test-bucket-source-12345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		replication := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetReplicationConfiguration"),
/// 						pulumi.String("s3:ListBucket"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						source.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetObjectVersionForReplication"),
/// 						pulumi.String("s3:GetObjectVersionAcl"),
/// 						pulumi.String("s3:GetObjectVersionTagging"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						source.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:ReplicateObject"),
/// 						pulumi.String("s3:ReplicateDelete"),
/// 						pulumi.String("s3:ReplicateTags"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						destination.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		replicationPolicy, err := iam.NewPolicy(ctx, "replication", &iam.PolicyArgs{
/// 			Name:   pulumi.String("tf-iam-role-policy-replication-12345"),
/// 			Policy: replication.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "replication", &iam.RolePolicyAttachmentArgs{
/// 			Role:      replicationRole.Name,
/// 			PolicyArn: replicationPolicy.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketVersioning(ctx, "destination", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: destination.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "source_bucket_acl", &s3.BucketAclArgs{
/// 			Region: pulumi.String("eu-central-1"),
/// 			Bucket: source.ID().ToIDOutput().ToStringOutput(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceBucketVersioning, err := s3.NewBucketVersioning(ctx, "source", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Region: pulumi.String("eu-central-1"),
/// 			Bucket: source.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "replication", &s3.BucketReplicationConfigArgs{
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("example"),
/// 					},
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       destination.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 					Id:     pulumi.String("examplerule"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Region: pulumi.String("eu-central-1"),
/// 			Role:   replicationRole.Arn,
/// 			Bucket: source.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			sourceBucketVersioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["s3.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
/// data "aws_iam_getpolicydocument" "replication" {
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:GetReplicationConfiguration", "s3:ListBucket"]
///     resources = [aws_s3_bucket.source.arn]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:GetObjectVersionForReplication", "s3:GetObjectVersionAcl", "s3:GetObjectVersionTagging"]
///     resources = ["${aws_s3_bucket.source.arn}/*"]
///   }
///   statements {
///     effect    = "Allow"
///     actions   = ["s3:ReplicateObject", "s3:ReplicateDelete", "s3:ReplicateTags"]
///     resources = ["${aws_s3_bucket.destination.arn}/*"]
///   }
/// }
///
/// resource "aws_iam_role" "replication" {
///   name               = "tf-iam-role-replication-12345"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_iam_policy" "replication" {
///   name   = "tf-iam-role-policy-replication-12345"
///   policy = data.aws_iam_getpolicydocument.replication.json
/// }
/// resource "aws_iam_rolepolicyattachment" "replication" {
///   role       = aws_iam_role.replication.name
///   policy_arn = aws_iam_policy.replication.arn
/// }
/// resource "aws_s3_bucket" "destination" {
///   bucket = "tf-test-bucket-destination-12345"
/// }
/// resource "aws_s3_bucketversioning" "destination" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.destination.id
/// }
/// resource "aws_s3_bucket" "source" {
///   region = "eu-central-1"
///   bucket = "tf-test-bucket-source-12345"
/// }
/// resource "aws_s3_bucketacl" "source_bucket_acl" {
///   region = "eu-central-1"
///   bucket = aws_s3_bucket.source.id
///   acl    = "private"
/// }
/// resource "aws_s3_bucketversioning" "source" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   region = "eu-central-1"
///   bucket = aws_s3_bucket.source.id
/// }
/// resource "aws_s3_bucketreplicationconfig" "replication" {
///   depends_on = [aws_s3_bucketversioning.source]
///   rules {
///     filter = {
///       prefix = "example"
///     }
///     destination = {
///       bucket        = aws_s3_bucket.destination.arn
///       storage_class = "STANDARD"
///     }
///     id     = "examplerule"
///     status = "Enabled"
///   }
///   region = "eu-central-1"
///   role   = aws_iam_role.replication.arn
///   bucket = aws_s3_bucket.source.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketReplicationConfig;
/// import com.pulumi.aws.s3.BucketReplicationConfigArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleDestinationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var replicationRole = new Role("replicationRole", RoleArgs.builder()
///             .name("tf-iam-role-replication-12345")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var destination = new Bucket("destination", BucketArgs.builder()
///             .bucket("tf-test-bucket-destination-12345")
///             .build());
///
///         var source = new Bucket("source", BucketArgs.builder()
///             .region("eu-central-1")
///             .bucket("tf-test-bucket-source-12345")
///             .build());
///
///         final var replication = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetReplicationConfiguration",
///                         "s3:ListBucket")
///                     .resources(source.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:GetObjectVersionForReplication",
///                         "s3:GetObjectVersionAcl",
///                         "s3:GetObjectVersionTagging")
///                     .resources(source.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .effect("Allow")
///                     .actions(
///                         "s3:ReplicateObject",
///                         "s3:ReplicateDelete",
///                         "s3:ReplicateTags")
///                     .resources(destination.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build())
///             .build());
///
///         var replicationPolicy = new Policy("replicationPolicy", PolicyArgs.builder()
///             .name("tf-iam-role-policy-replication-12345")
///             .policy(replication.applyValue(_replication -> _replication.json()))
///             .build());
///
///         var replicationRolePolicyAttachment = new RolePolicyAttachment("replicationRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
///             .role(replicationRole.name())
///             .policyArn(replicationPolicy.arn())
///             .build());
///
///         var destinationBucketVersioning = new BucketVersioning("destinationBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(destination.id())
///             .build());
///
///         var sourceBucketAcl = new BucketAcl("sourceBucketAcl", BucketAclArgs.builder()
///             .region("eu-central-1")
///             .bucket(source.id())
///             .acl("private")
///             .build());
///
///         var sourceBucketVersioning = new BucketVersioning("sourceBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .region("eu-central-1")
///             .bucket(source.id())
///             .build());
///
///         var replicationBucketReplicationConfig = new BucketReplicationConfig("replicationBucketReplicationConfig", BucketReplicationConfigArgs.builder()
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("example")
///                     .build())
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(destination.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .id("examplerule")
///                 .status("Enabled")
///                 .build())
///             .region("eu-central-1")
///             .role(replicationRole.arn())
///             .bucket(source.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(sourceBucketVersioning)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   replicationRole:
///     type: aws:iam:Role
///     name: replication
///     properties:
///       name: tf-iam-role-replication-12345
///       assumeRolePolicy: ${assumeRole.json}
///   replicationPolicy:
///     type: aws:iam:Policy
///     name: replication
///     properties:
///       name: tf-iam-role-policy-replication-12345
///       policy: ${replication.json}
///   replicationRolePolicyAttachment:
///     type: aws:iam:RolePolicyAttachment
///     name: replication
///     properties:
///       role: ${replicationRole.name}
///       policyArn: ${replicationPolicy.arn}
///   destination:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket-destination-12345
///   destinationBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: destination
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${destination.id}
///   source:
///     type: aws:s3:Bucket
///     properties:
///       region: eu-central-1
///       bucket: tf-test-bucket-source-12345
///   sourceBucketAcl:
///     type: aws:s3:BucketAcl
///     name: source_bucket_acl
///     properties:
///       region: eu-central-1
///       bucket: ${source.id}
///       acl: private
///   sourceBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: source
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       region: eu-central-1
///       bucket: ${source.id}
///   replicationBucketReplicationConfig:
///     type: aws:s3:BucketReplicationConfig
///     name: replication
///     properties:
///       rules:
///         - filter:
///             prefix: example
///           destination:
///             bucket: ${destination.arn}
///             storageClass: STANDARD
///           id: examplerule
///           status: Enabled
///       region: eu-central-1
///       role: ${replicationRole.arn}
///       bucket: ${source.id}
///     options:
///       dependsOn:
///         - ${sourceBucketVersioning}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
///   replication:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - s3:GetReplicationConfiguration
///               - s3:ListBucket
///             resources:
///               - ${source.arn}
///           - effect: Allow
///             actions:
///               - s3:GetObjectVersionForReplication
///               - s3:GetObjectVersionAcl
///               - s3:GetObjectVersionTagging
///             resources:
///               - ${source.arn}/*
///           - effect: Allow
///             actions:
///               - s3:ReplicateObject
///               - s3:ReplicateDelete
///               - s3:ReplicateTags
///             resources:
///               - ${destination.arn}/*
/// ```
///
///
/// ### Bi-Directional Replication
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // ... other configuration ...
/// const east = new aws.s3.Bucket("east", {bucket: "tf-test-bucket-east-12345"});
/// const eastBucketVersioning = new aws.s3.BucketVersioning("east", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: east.id,
/// });
/// const west = new aws.s3.Bucket("west", {bucket: "tf-test-bucket-west-12345"});
/// const westBucketVersioning = new aws.s3.BucketVersioning("west", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: west.id,
/// });
/// const eastToWest = new aws.s3.BucketReplicationConfig("east_to_west", {
///     rules: [{
///         filter: {
///             prefix: "foo",
///         },
///         destination: {
///             bucket: west.arn,
///             storageClass: "STANDARD",
///         },
///         id: "foobar",
///         status: "Enabled",
///     }],
///     role: eastReplication.arn,
///     bucket: east.id,
/// }, {
///     dependsOn: [eastBucketVersioning],
/// });
/// const westToEast = new aws.s3.BucketReplicationConfig("west_to_east", {
///     rules: [{
///         filter: {
///             prefix: "foo",
///         },
///         destination: {
///             bucket: east.arn,
///             storageClass: "STANDARD",
///         },
///         id: "foobar",
///         status: "Enabled",
///     }],
///     role: westReplication.arn,
///     bucket: west.id,
/// }, {
///     dependsOn: [westBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # ... other configuration ...
/// east = aws.s3.Bucket("east", bucket="tf-test-bucket-east-12345")
/// east_bucket_versioning = aws.s3.BucketVersioning("east",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=east.id)
/// west = aws.s3.Bucket("west", bucket="tf-test-bucket-west-12345")
/// west_bucket_versioning = aws.s3.BucketVersioning("west",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=west.id)
/// east_to_west = aws.s3.BucketReplicationConfig("east_to_west",
///     rules=[{
///         "filter": {
///             "prefix": "foo",
///         },
///         "destination": {
///             "bucket": west.arn,
///             "storage_class": "STANDARD",
///         },
///         "id": "foobar",
///         "status": "Enabled",
///     }],
///     role=east_replication["arn"],
///     bucket=east.id,
///     opts = pulumi.ResourceOptions(depends_on=[east_bucket_versioning]))
/// west_to_east = aws.s3.BucketReplicationConfig("west_to_east",
///     rules=[{
///         "filter": {
///             "prefix": "foo",
///         },
///         "destination": {
///             "bucket": east.arn,
///             "storage_class": "STANDARD",
///         },
///         "id": "foobar",
///         "status": "Enabled",
///     }],
///     role=west_replication["arn"],
///     bucket=west.id,
///     opts = pulumi.ResourceOptions(depends_on=[west_bucket_versioning]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // ... other configuration ...
///     var east = new Aws.S3.Bucket("east", new()
///     {
///         BucketName = "tf-test-bucket-east-12345",
///     });
///
///     var eastBucketVersioning = new Aws.S3.BucketVersioning("east", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = east.Id,
///     });
///
///     var west = new Aws.S3.Bucket("west", new()
///     {
///         BucketName = "tf-test-bucket-west-12345",
///     });
///
///     var westBucketVersioning = new Aws.S3.BucketVersioning("west", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = west.Id,
///     });
///
///     var eastToWest = new Aws.S3.BucketReplicationConfig("east_to_west", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "foo",
///                 },
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = west.Arn,
///                     StorageClass = "STANDARD",
///                 },
///                 Id = "foobar",
///                 Status = "Enabled",
///             },
///         },
///         Role = eastReplication.Arn,
///         Bucket = east.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             eastBucketVersioning,
///         },
///     });
///
///     var westToEast = new Aws.S3.BucketReplicationConfig("west_to_east", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "foo",
///                 },
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = east.Arn,
///                     StorageClass = "STANDARD",
///                 },
///                 Id = "foobar",
///                 Status = "Enabled",
///             },
///         },
///         Role = westReplication.Arn,
///         Bucket = west.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             westBucketVersioning,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ... other configuration ...
/// 		east, err := s3.NewBucket(ctx, "east", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket-east-12345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		eastBucketVersioning, err := s3.NewBucketVersioning(ctx, "east", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: east.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		west, err := s3.NewBucket(ctx, "west", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket-west-12345"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		westBucketVersioning, err := s3.NewBucketVersioning(ctx, "west", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: west.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "east_to_west", &s3.BucketReplicationConfigArgs{
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("foo"),
/// 					},
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       west.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 					Id:     pulumi.String("foobar"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Role:   pulumi.Any(eastReplication.Arn),
/// 			Bucket: east.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			eastBucketVersioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "west_to_east", &s3.BucketReplicationConfigArgs{
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("foo"),
/// 					},
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       east.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 					Id:     pulumi.String("foobar"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Role:   pulumi.Any(westReplication.Arn),
/// 			Bucket: west.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			westBucketVersioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// # ... other configuration ...
/// resource "aws_s3_bucket" "east" {
///   bucket = "tf-test-bucket-east-12345"
/// }
/// resource "aws_s3_bucketversioning" "east" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.east.id
/// }
/// resource "aws_s3_bucket" "west" {
///   bucket = "tf-test-bucket-west-12345"
/// }
/// resource "aws_s3_bucketversioning" "west" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.west.id
/// }
/// resource "aws_s3_bucketreplicationconfig" "east_to_west" {
///   depends_on = [aws_s3_bucketversioning.east]
///   rules {
///     filter = {
///       prefix = "foo"
///     }
///     destination = {
///       bucket        = aws_s3_bucket.west.arn
///       storage_class = "STANDARD"
///     }
///     id     = "foobar"
///     status = "Enabled"
///   }
///   role   = eastReplication.arn
///   bucket = aws_s3_bucket.east.id
/// }
/// resource "aws_s3_bucketreplicationconfig" "west_to_east" {
///   depends_on = [aws_s3_bucketversioning.west]
///   rules {
///     filter = {
///       prefix = "foo"
///     }
///     destination = {
///       bucket        = aws_s3_bucket.east.arn
///       storage_class = "STANDARD"
///     }
///     id     = "foobar"
///     status = "Enabled"
///   }
///   role   = westReplication.arn
///   bucket = aws_s3_bucket.west.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.BucketReplicationConfig;
/// import com.pulumi.aws.s3.BucketReplicationConfigArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketReplicationConfigRuleDestinationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // ... other configuration ...
///         var east = new Bucket("east", BucketArgs.builder()
///             .bucket("tf-test-bucket-east-12345")
///             .build());
///
///         var eastBucketVersioning = new BucketVersioning("eastBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(east.id())
///             .build());
///
///         var west = new Bucket("west", BucketArgs.builder()
///             .bucket("tf-test-bucket-west-12345")
///             .build());
///
///         var westBucketVersioning = new BucketVersioning("westBucketVersioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(west.id())
///             .build());
///
///         var eastToWest = new BucketReplicationConfig("eastToWest", BucketReplicationConfigArgs.builder()
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("foo")
///                     .build())
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(west.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .id("foobar")
///                 .status("Enabled")
///                 .build())
///             .role(eastReplication.arn())
///             .bucket(east.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(eastBucketVersioning)
///                 .build());
///
///         var westToEast = new BucketReplicationConfig("westToEast", BucketReplicationConfigArgs.builder()
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("foo")
///                     .build())
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(east.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .id("foobar")
///                 .status("Enabled")
///                 .build())
///             .role(westReplication.arn())
///             .bucket(west.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(westBucketVersioning)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # ... other configuration ...
///   east:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket-east-12345
///   eastBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: east
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${east.id}
///   west:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket-west-12345
///   westBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: west
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${west.id}
///   eastToWest:
///     type: aws:s3:BucketReplicationConfig
///     name: east_to_west
///     properties:
///       rules:
///         - filter:
///             prefix: foo
///           destination:
///             bucket: ${west.arn}
///             storageClass: STANDARD
///           id: foobar
///           status: Enabled
///       role: ${eastReplication.arn}
///       bucket: ${east.id}
///     options:
///       dependsOn:
///         - ${eastBucketVersioning}
///   westToEast:
///     type: aws:s3:BucketReplicationConfig
///     name: west_to_east
///     properties:
///       rules:
///         - filter:
///             prefix: foo
///           destination:
///             bucket: ${east.arn}
///             storageClass: STANDARD
///           id: foobar
///           status: Enabled
///       role: ${westReplication.arn}
///       bucket: ${west.id}
///     options:
///       dependsOn:
///         - ${westBucketVersioning}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket replication configuration using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketReplicationConfig:BucketReplicationConfig replication bucket-name
/// ```
class BucketReplicationConfig extends pulumi.CustomResource {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  late final pulumi.Output<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  late final pulumi.Output<String> role;
  /// List of configuration blocks describing the rules managing the replication. See below.
  late final pulumi.Output<List<BucketReplicationConfigRule>> rules;
  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token". For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
  late final pulumi.Output<String?> token;

  /// Creates a new [BucketReplicationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketReplicationConfig]. {@macro pulumi_s3_bucket_replication_config_bucket_replication_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketReplicationConfig(
    String name, {
    BucketReplicationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketReplicationConfig:BucketReplicationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['token'],
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    rules = registerOutput<List<BucketReplicationConfigRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketReplicationConfigRule>(guardedValue, (value) => BucketReplicationConfigRule.fromMap((value as Map).cast<String, dynamic>())); });
    token = registerOutput<String?>('token', isSecret: true);
  }

  /// Gets an existing [BucketReplicationConfig] resource's state with the given [name] and [id].
  static BucketReplicationConfig get(
    String name,
    pulumi.Input<String> id, {
    BucketReplicationConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketReplicationConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketReplicationConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketReplicationConfig:BucketReplicationConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    rules = registerOutput<List<BucketReplicationConfigRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketReplicationConfigRule>(guardedValue, (value) => BucketReplicationConfigRule.fromMap((value as Map).cast<String, dynamic>())); });
    token = registerOutput<String?>('token', isSecret: true);
  }

  /// Creates a typed reference to an existing [BucketReplicationConfig] resource.
  BucketReplicationConfig.reference(String urn)
    : super(
        'aws:s3/bucketReplicationConfig:BucketReplicationConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['token'],
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    role = registerOutput<String>('role');
    rules = registerOutput<List<BucketReplicationConfigRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketReplicationConfigRule>(guardedValue, (value) => BucketReplicationConfigRule.fromMap((value as Map).cast<String, dynamic>())); });
    token = registerOutput<String?>('token', isSecret: true);
  }
}
