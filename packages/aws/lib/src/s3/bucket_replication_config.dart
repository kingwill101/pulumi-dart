import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_config_args.dart';
import 'bucket_replication_config_rule.dart';

/// Provides an independent configuration resource for S3 bucket [replication configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/crr.html).
///
/// > **NOTE:** S3 Buckets only support a single replication configuration. Declaring multiple `aws.s3.BucketReplicationConfig` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// > This resource cannot be used with S3 directory buckets.
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
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
///     policy: replication.apply(replication => replication.json),
/// });
/// const replicationRolePolicyAttachment = new aws.iam.RolePolicyAttachment("replication", {
///     role: replicationRole.name,
///     policyArn: replicationPolicy.arn,
/// });
/// const destinationBucketVersioning = new aws.s3.BucketVersioning("destination", {
///     bucket: destination.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const sourceBucketAcl = new aws.s3.BucketAcl("source_bucket_acl", {
///     bucket: source.id,
///     acl: "private",
/// });
/// const sourceBucketVersioning = new aws.s3.BucketVersioning("source", {
///     bucket: source.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const replicationBucketReplicationConfig = new aws.s3.BucketReplicationConfig("replication", {
///     role: replicationRole.arn,
///     bucket: source.id,
///     rules: [{
///         id: "examplerule",
///         filter: {
///             prefix: "example",
///         },
///         status: "Enabled",
///         destination: {
///             bucket: destination.arn,
///             storageClass: "STANDARD",
///         },
///     }],
/// }, {
///     dependsOn: [sourceBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
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
///     bucket=destination.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// source_bucket_acl = aws.s3.BucketAcl("source_bucket_acl",
///     bucket=source.id,
///     acl="private")
/// source_bucket_versioning = aws.s3.BucketVersioning("source",
///     bucket=source.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// replication_bucket_replication_config = aws.s3.BucketReplicationConfig("replication",
///     role=replication_role.arn,
///     bucket=source.id,
///     rules=[{
///         "id": "examplerule",
///         "filter": {
///             "prefix": "example",
///         },
///         "status": "Enabled",
///         "destination": {
///             "bucket": destination.arn,
///             "storage_class": "STANDARD",
///         },
///     }],
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
///                 Effect = "Allow",
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
///         Bucket = destination.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
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
///         Bucket = source.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var replicationBucketReplicationConfig = new Aws.S3.BucketReplicationConfig("replication", new()
///     {
///         Role = replicationRole.Arn,
///         Bucket = source.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Id = "examplerule",
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "example",
///                 },
///                 Status = "Enabled",
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = destination.Arn,
///                     StorageClass = "STANDARD",
///                 },
///             },
///         },
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"s3.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Name: pulumi.String("tf-iam-role-policy-replication-12345"),
/// 			Policy: pulumi.String(replication.ApplyT(func(replication iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &replication.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// 			Bucket: destination.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "source_bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: source.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceBucketVersioning, err := s3.NewBucketVersioning(ctx, "source", &s3.BucketVersioningArgs{
/// 			Bucket: source.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "replication", &s3.BucketReplicationConfigArgs{
/// 			Role:   replicationRole.Arn,
/// 			Bucket: source.ID(),
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Id: pulumi.String("examplerule"),
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("example"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       destination.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 				},
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
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
///             .bucket(destination.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var sourceBucketAcl = new BucketAcl("sourceBucketAcl", BucketAclArgs.builder()
///             .bucket(source.id())
///             .acl("private")
///             .build());
///
///         var sourceBucketVersioning = new BucketVersioning("sourceBucketVersioning", BucketVersioningArgs.builder()
///             .bucket(source.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var replicationBucketReplicationConfig = new BucketReplicationConfig("replicationBucketReplicationConfig", BucketReplicationConfigArgs.builder()
///             .role(replicationRole.arn())
///             .bucket(source.id())
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .id("examplerule")
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("example")
///                     .build())
///                 .status("Enabled")
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(destination.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .build())
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
///       bucket: ${destination.id}
///       versioningConfiguration:
///         status: Enabled
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
///       bucket: ${source.id}
///       versioningConfiguration:
///         status: Enabled
///   replicationBucketReplicationConfig:
///     type: aws:s3:BucketReplicationConfig
///     name: replication
///     properties:
///       role: ${replicationRole.arn}
///       bucket: ${source.id}
///       rules:
///         - id: examplerule
///           filter:
///             prefix: example
///           status: Enabled
///           destination:
///             bucket: ${destination.arn}
///             storageClass: STANDARD
///     options:
///       dependsOn:
///         - ${sourceBucketVersioning}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
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
///     policy: replication.apply(replication => replication.json),
/// });
/// const replicationRolePolicyAttachment = new aws.iam.RolePolicyAttachment("replication", {
///     role: replicationRole.name,
///     policyArn: replicationPolicy.arn,
/// });
/// const destinationBucketVersioning = new aws.s3.BucketVersioning("destination", {
///     bucket: destination.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const sourceBucketAcl = new aws.s3.BucketAcl("source_bucket_acl", {
///     region: "eu-central-1",
///     bucket: source.id,
///     acl: "private",
/// });
/// const sourceBucketVersioning = new aws.s3.BucketVersioning("source", {
///     region: "eu-central-1",
///     bucket: source.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const replicationBucketReplicationConfig = new aws.s3.BucketReplicationConfig("replication", {
///     region: "eu-central-1",
///     role: replicationRole.arn,
///     bucket: source.id,
///     rules: [{
///         id: "examplerule",
///         filter: {
///             prefix: "example",
///         },
///         status: "Enabled",
///         destination: {
///             bucket: destination.arn,
///             storageClass: "STANDARD",
///         },
///     }],
/// }, {
///     dependsOn: [sourceBucketVersioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
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
///     bucket=destination.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// source_bucket_acl = aws.s3.BucketAcl("source_bucket_acl",
///     region="eu-central-1",
///     bucket=source.id,
///     acl="private")
/// source_bucket_versioning = aws.s3.BucketVersioning("source",
///     region="eu-central-1",
///     bucket=source.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// replication_bucket_replication_config = aws.s3.BucketReplicationConfig("replication",
///     region="eu-central-1",
///     role=replication_role.arn,
///     bucket=source.id,
///     rules=[{
///         "id": "examplerule",
///         "filter": {
///             "prefix": "example",
///         },
///         "status": "Enabled",
///         "destination": {
///             "bucket": destination.arn,
///             "storage_class": "STANDARD",
///         },
///     }],
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
///                 Effect = "Allow",
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
///         Bucket = destination.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
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
///         Region = "eu-central-1",
///         Bucket = source.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var replicationBucketReplicationConfig = new Aws.S3.BucketReplicationConfig("replication", new()
///     {
///         Region = "eu-central-1",
///         Role = replicationRole.Arn,
///         Bucket = source.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Id = "examplerule",
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "example",
///                 },
///                 Status = "Enabled",
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = destination.Arn,
///                     StorageClass = "STANDARD",
///                 },
///             },
///         },
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"s3.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Name: pulumi.String("tf-iam-role-policy-replication-12345"),
/// 			Policy: pulumi.String(replication.ApplyT(func(replication iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &replication.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
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
/// 			Bucket: destination.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "source_bucket_acl", &s3.BucketAclArgs{
/// 			Region: pulumi.String("eu-central-1"),
/// 			Bucket: source.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceBucketVersioning, err := s3.NewBucketVersioning(ctx, "source", &s3.BucketVersioningArgs{
/// 			Region: pulumi.String("eu-central-1"),
/// 			Bucket: source.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "replication", &s3.BucketReplicationConfigArgs{
/// 			Region: pulumi.String("eu-central-1"),
/// 			Role:   replicationRole.Arn,
/// 			Bucket: source.ID(),
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Id: pulumi.String("examplerule"),
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("example"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       destination.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 				},
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
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
///             .bucket(destination.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var sourceBucketAcl = new BucketAcl("sourceBucketAcl", BucketAclArgs.builder()
///             .region("eu-central-1")
///             .bucket(source.id())
///             .acl("private")
///             .build());
///
///         var sourceBucketVersioning = new BucketVersioning("sourceBucketVersioning", BucketVersioningArgs.builder()
///             .region("eu-central-1")
///             .bucket(source.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var replicationBucketReplicationConfig = new BucketReplicationConfig("replicationBucketReplicationConfig", BucketReplicationConfigArgs.builder()
///             .region("eu-central-1")
///             .role(replicationRole.arn())
///             .bucket(source.id())
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .id("examplerule")
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("example")
///                     .build())
///                 .status("Enabled")
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(destination.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .build())
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
///       bucket: ${destination.id}
///       versioningConfiguration:
///         status: Enabled
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
///       region: eu-central-1
///       bucket: ${source.id}
///       versioningConfiguration:
///         status: Enabled
///   replicationBucketReplicationConfig:
///     type: aws:s3:BucketReplicationConfig
///     name: replication
///     properties:
///       region: eu-central-1
///       role: ${replicationRole.arn}
///       bucket: ${source.id}
///       rules:
///         - id: examplerule
///           filter:
///             prefix: example
///           status: Enabled
///           destination:
///             bucket: ${destination.arn}
///             storageClass: STANDARD
///     options:
///       dependsOn:
///         - ${sourceBucketVersioning}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
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
///     bucket: east.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const west = new aws.s3.Bucket("west", {bucket: "tf-test-bucket-west-12345"});
/// const westBucketVersioning = new aws.s3.BucketVersioning("west", {
///     bucket: west.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const eastToWest = new aws.s3.BucketReplicationConfig("east_to_west", {
///     role: eastReplication.arn,
///     bucket: east.id,
///     rules: [{
///         id: "foobar",
///         filter: {
///             prefix: "foo",
///         },
///         status: "Enabled",
///         destination: {
///             bucket: west.arn,
///             storageClass: "STANDARD",
///         },
///     }],
/// }, {
///     dependsOn: [eastBucketVersioning],
/// });
/// const westToEast = new aws.s3.BucketReplicationConfig("west_to_east", {
///     role: westReplication.arn,
///     bucket: west.id,
///     rules: [{
///         id: "foobar",
///         filter: {
///             prefix: "foo",
///         },
///         status: "Enabled",
///         destination: {
///             bucket: east.arn,
///             storageClass: "STANDARD",
///         },
///     }],
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
///     bucket=east.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// west = aws.s3.Bucket("west", bucket="tf-test-bucket-west-12345")
/// west_bucket_versioning = aws.s3.BucketVersioning("west",
///     bucket=west.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// east_to_west = aws.s3.BucketReplicationConfig("east_to_west",
///     role=east_replication["arn"],
///     bucket=east.id,
///     rules=[{
///         "id": "foobar",
///         "filter": {
///             "prefix": "foo",
///         },
///         "status": "Enabled",
///         "destination": {
///             "bucket": west.arn,
///             "storage_class": "STANDARD",
///         },
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[east_bucket_versioning]))
/// west_to_east = aws.s3.BucketReplicationConfig("west_to_east",
///     role=west_replication["arn"],
///     bucket=west.id,
///     rules=[{
///         "id": "foobar",
///         "filter": {
///             "prefix": "foo",
///         },
///         "status": "Enabled",
///         "destination": {
///             "bucket": east.arn,
///             "storage_class": "STANDARD",
///         },
///     }],
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
///         Bucket = east.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var west = new Aws.S3.Bucket("west", new()
///     {
///         BucketName = "tf-test-bucket-west-12345",
///     });
///
///     var westBucketVersioning = new Aws.S3.BucketVersioning("west", new()
///     {
///         Bucket = west.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var eastToWest = new Aws.S3.BucketReplicationConfig("east_to_west", new()
///     {
///         Role = eastReplication.Arn,
///         Bucket = east.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Id = "foobar",
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "foo",
///                 },
///                 Status = "Enabled",
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = west.Arn,
///                     StorageClass = "STANDARD",
///                 },
///             },
///         },
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
///         Role = westReplication.Arn,
///         Bucket = west.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketReplicationConfigRuleArgs
///             {
///                 Id = "foobar",
///                 Filter = new Aws.S3.Inputs.BucketReplicationConfigRuleFilterArgs
///                 {
///                     Prefix = "foo",
///                 },
///                 Status = "Enabled",
///                 Destination = new Aws.S3.Inputs.BucketReplicationConfigRuleDestinationArgs
///                 {
///                     Bucket = east.Arn,
///                     StorageClass = "STANDARD",
///                 },
///             },
///         },
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
/// 			Bucket: east.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
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
/// 			Bucket: west.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "east_to_west", &s3.BucketReplicationConfigArgs{
/// 			Role:   pulumi.Any(eastReplication.Arn),
/// 			Bucket: east.ID(),
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Id: pulumi.String("foobar"),
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("foo"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       west.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			eastBucketVersioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketReplicationConfig(ctx, "west_to_east", &s3.BucketReplicationConfigArgs{
/// 			Role:   pulumi.Any(westReplication.Arn),
/// 			Bucket: west.ID(),
/// 			Rules: s3.BucketReplicationConfigRuleArray{
/// 				&s3.BucketReplicationConfigRuleArgs{
/// 					Id: pulumi.String("foobar"),
/// 					Filter: &s3.BucketReplicationConfigRuleFilterArgs{
/// 						Prefix: pulumi.String("foo"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 					Destination: &s3.BucketReplicationConfigRuleDestinationArgs{
/// 						Bucket:       east.Arn,
/// 						StorageClass: pulumi.String("STANDARD"),
/// 					},
/// 				},
/// 			},
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
/// import java.util.List;
/// import java.util.ArrayList;
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
///             .bucket(east.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var west = new Bucket("west", BucketArgs.builder()
///             .bucket("tf-test-bucket-west-12345")
///             .build());
///
///         var westBucketVersioning = new BucketVersioning("westBucketVersioning", BucketVersioningArgs.builder()
///             .bucket(west.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var eastToWest = new BucketReplicationConfig("eastToWest", BucketReplicationConfigArgs.builder()
///             .role(eastReplication.arn())
///             .bucket(east.id())
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .id("foobar")
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("foo")
///                     .build())
///                 .status("Enabled")
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(west.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(eastBucketVersioning)
///                 .build());
///
///         var westToEast = new BucketReplicationConfig("westToEast", BucketReplicationConfigArgs.builder()
///             .role(westReplication.arn())
///             .bucket(west.id())
///             .rules(BucketReplicationConfigRuleArgs.builder()
///                 .id("foobar")
///                 .filter(BucketReplicationConfigRuleFilterArgs.builder()
///                     .prefix("foo")
///                     .build())
///                 .status("Enabled")
///                 .destination(BucketReplicationConfigRuleDestinationArgs.builder()
///                     .bucket(east.arn())
///                     .storageClass("STANDARD")
///                     .build())
///                 .build())
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
///       bucket: ${east.id}
///       versioningConfiguration:
///         status: Enabled
///   west:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test-bucket-west-12345
///   westBucketVersioning:
///     type: aws:s3:BucketVersioning
///     name: west
///     properties:
///       bucket: ${west.id}
///       versioningConfiguration:
///         status: Enabled
///   eastToWest:
///     type: aws:s3:BucketReplicationConfig
///     name: east_to_west
///     properties:
///       role: ${eastReplication.arn}
///       bucket: ${east.id}
///       rules:
///         - id: foobar
///           filter:
///             prefix: foo
///           status: Enabled
///           destination:
///             bucket: ${west.arn}
///             storageClass: STANDARD
///     options:
///       dependsOn:
///         - ${eastBucketVersioning}
///   westToEast:
///     type: aws:s3:BucketReplicationConfig
///     name: west_to_east
///     properties:
///       role: ${westReplication.arn}
///       bucket: ${west.id}
///       rules:
///         - id: foobar
///           filter:
///             prefix: foo
///           status: Enabled
///           destination:
///             bucket: ${east.arn}
///             storageClass: STANDARD
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
  ///
  /// > **NOTE:** Replication to multiple destination buckets requires that `priority` is specified in the `rule` object. If the corresponding rule requires no filter, an empty configuration block `filter {}` must be specified.
  ///
  /// > **NOTE:** Amazon S3's latest version of the replication configuration is V2, which includes the `filter` attribute for replication rules.
  ///
  /// > **NOTE:** The `existing_object_replication` parameter is not supported by Amazon S3 at this time and should not be included in your `rule` configurations. Specifying this parameter will result in `MalformedXML` errors.
  /// To replicate existing objects, please refer to the [Replicating existing objects with S3 Batch Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-batch-replication-batch.html) documentation in the Amazon S3 User Guide.
  late final pulumi.Output<List<BucketReplicationConfigRule>> rules;

  /// Token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's "Object Lock token".
  /// For more details, see [Using S3 Object Lock with replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-managing-replication).
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.rules = registerOutput<List<BucketReplicationConfigRule>>('rules');
    this.token = registerOutput<String?>('token');
  }
}
