import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_data_sync_args.dart';
import 'resource_data_sync_s3_destination.dart';
import 'resource_data_sync_state.dart';

/// Provides a SSM resource data sync.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleResourceDataSync = new aws.ssm.ResourceDataSync("example", {
///     s3Destination: {
///         bucketName: exampleBucket.bucket,
///         region: exampleBucket.region,
///     },
///     name: "example",
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             principals: [{
///                 type: "Service",
///                 identifiers: ["ssm.amazonaws.com"],
///             }],
///             sid: "SSMBucketPermissionsCheck",
///             effect: "Allow",
///             actions: ["s3:GetBucketAcl"],
///             resources: [exampleBucket.arn],
///         },
///         {
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "s3:x-amz-acl",
///                 values: ["bucket-owner-full-control"],
///             }],
///             principals: [{
///                 type: "Service",
///                 identifiers: ["ssm.amazonaws.com"],
///             }],
///             sid: "SSMBucketDelivery",
///             effect: "Allow",
///             actions: ["s3:PutObject"],
///             resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
///         },
///     ],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.bucket,
///     policy: example.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_resource_data_sync = aws.ssm.ResourceDataSync("example",
///     s3_destination={
///         "bucket_name": example_bucket.bucket,
///         "region": example_bucket.region,
///     },
///     name="example")
/// example = aws.iam.get_policy_document_output(statements=[
///     {
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["ssm.amazonaws.com"],
///         }],
///         "sid": "SSMBucketPermissionsCheck",
///         "effect": "Allow",
///         "actions": ["s3:GetBucketAcl"],
///         "resources": [example_bucket.arn],
///     },
///     {
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "s3:x-amz-acl",
///             "values": ["bucket-owner-full-control"],
///         }],
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["ssm.amazonaws.com"],
///         }],
///         "sid": "SSMBucketDelivery",
///         "effect": "Allow",
///         "actions": ["s3:PutObject"],
///         "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
///     },
/// ])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.bucket,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleResourceDataSync = new Aws.Ssm.ResourceDataSync("example", new()
///     {
///         S3Destination = new Aws.Ssm.Inputs.ResourceDataSyncS3DestinationArgs
///         {
///             BucketName = exampleBucket.BucketName,
///             Region = exampleBucket.Region,
///         },
///         Name = "example",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "ssm.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "SSMBucketPermissionsCheck",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetBucketAcl",
///                 },
///                 Resources = new[]
///                 {
///                     exampleBucket.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "s3:x-amz-acl",
///                         Values = new[]
///                         {
///                             "bucket-owner-full-control",
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "ssm.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "SSMBucketDelivery",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleBucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleBucket.BucketName,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssm.NewResourceDataSync(ctx, "example", &ssm.ResourceDataSyncArgs{
/// 			S3Destination: &ssm.ResourceDataSyncS3DestinationArgs{
/// 				BucketName: exampleBucket.Bucket,
/// 				Region:     exampleBucket.Region,
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("ssm.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.String("SSMBucketPermissionsCheck"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetBucketAcl"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("s3:x-amz-acl"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("bucket-owner-full-control"),
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("ssm.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.String("SSMBucketDelivery"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// 			Bucket: exampleBucket.Bucket,
/// 			Policy: example.Json(),
/// 		})
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["ssm.amazonaws.com"]
///     }
///     sid       = "SSMBucketPermissionsCheck"
///     effect    = "Allow"
///     actions   = ["s3:GetBucketAcl"]
///     resources = [aws_s3_bucket.example.arn]
///   }
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "s3:x-amz-acl"
///       values   = ["bucket-owner-full-control"]
///     }
///     principals {
///       type        = "Service"
///       identifiers = ["ssm.amazonaws.com"]
///     }
///     sid       = "SSMBucketDelivery"
///     effect    = "Allow"
///     actions   = ["s3:PutObject"]
///     resources = ["${aws_s3_bucket.example.arn}/*"]
///   }
/// }
///
/// resource "aws_ssm_resourcedatasync" "example" {
///   s3_destination = {
///     bucket_name = aws_s3_bucket.example.bucket
///     region      = aws_s3_bucket.example.region
///   }
///   name = "example"
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketpolicy" "example" {
///   bucket = aws_s3_bucket.example.bucket
///   policy = data.aws_iam_getpolicydocument.example.json
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
/// import com.pulumi.aws.ssm.ResourceDataSync;
/// import com.pulumi.aws.ssm.ResourceDataSyncArgs;
/// import com.pulumi.aws.ssm.inputs.ResourceDataSyncS3DestinationArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
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
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleResourceDataSync = new ResourceDataSync("exampleResourceDataSync", ResourceDataSyncArgs.builder()
///             .s3Destination(ResourceDataSyncS3DestinationArgs.builder()
///                 .bucketName(exampleBucket.bucket())
///                 .region(exampleBucket.region())
///                 .build())
///             .name("example")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("ssm.amazonaws.com")
///                         .build())
///                     .sid("SSMBucketPermissionsCheck")
///                     .effect("Allow")
///                     .actions("s3:GetBucketAcl")
///                     .resources(exampleBucket.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("s3:x-amz-acl")
///                         .values("bucket-owner-full-control")
///                         .build())
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("ssm.amazonaws.com")
///                         .build())
///                     .sid("SSMBucketDelivery")
///                     .effect("Allow")
///                     .actions("s3:PutObject")
///                     .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                     .build())
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.bucket())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceDataSync:
///     type: aws:ssm:ResourceDataSync
///     name: example
///     properties:
///       s3Destination:
///         bucketName: ${exampleBucket.bucket}
///         region: ${exampleBucket.region}
///       name: example
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.bucket}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - ssm.amazonaws.com
///             sid: SSMBucketPermissionsCheck
///             effect: Allow
///             actions:
///               - s3:GetBucketAcl
///             resources:
///               - ${exampleBucket.arn}
///           - conditions:
///               - test: StringEquals
///                 variable: s3:x-amz-acl
///                 values:
///                   - bucket-owner-full-control
///             principals:
///               - type: Service
///                 identifiers:
///                   - ssm.amazonaws.com
///             sid: SSMBucketDelivery
///             effect: Allow
///             actions:
///               - s3:PutObject
///             resources:
///               - ${exampleBucket.arn}/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSM resource data sync using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/resourceDataSync:ResourceDataSync example example-name
/// ```
class ResourceDataSync extends pulumi.CustomResource {
  /// Name for the configuration.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon S3 configuration details for the sync.
  late final pulumi.Output<ResourceDataSyncS3Destination> s3Destination;

  /// Creates a new [ResourceDataSync].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceDataSync]. {@macro pulumi_ssm_resource_data_sync_resource_data_sync_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceDataSync(
    String name, {
    ResourceDataSyncArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/resourceDataSync:ResourceDataSync',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ResourceDataSyncS3Destination>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDataSyncS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ResourceDataSync] resource's state with the given [name] and [id].
  static ResourceDataSync get(
    String name,
    pulumi.Input<String> id, {
    ResourceDataSyncState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceDataSync._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceDataSync._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/resourceDataSync:ResourceDataSync',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ResourceDataSyncS3Destination>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDataSyncS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceDataSync] resource.
  ResourceDataSync.reference(String urn)
    : super(
        'aws:ssm/resourceDataSync:ResourceDataSync',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    s3Destination = registerOutput<ResourceDataSyncS3Destination>('s3Destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceDataSyncS3Destination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
