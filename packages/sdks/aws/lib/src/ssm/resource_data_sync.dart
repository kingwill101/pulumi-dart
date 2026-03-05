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
/// const hogeBucket = new aws.s3.Bucket("hoge", {bucket: "tf-test-bucket-1234"});
/// const hoge = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             sid: "SSMBucketPermissionsCheck",
///             effect: "Allow",
///             principals: [{
///                 type: "Service",
///                 identifiers: ["ssm.amazonaws.com"],
///             }],
///             actions: ["s3:GetBucketAcl"],
///             resources: ["arn:aws:s3:::tf-test-bucket-1234"],
///         },
///         {
///             sid: "SSMBucketDelivery",
///             effect: "Allow",
///             principals: [{
///                 type: "Service",
///                 identifiers: ["ssm.amazonaws.com"],
///             }],
///             actions: ["s3:PutObject"],
///             resources: ["arn:aws:s3:::tf-test-bucket-1234/*"],
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "s3:x-amz-acl",
///                 values: ["bucket-owner-full-control"],
///             }],
///         },
///     ],
/// });
/// const hogeBucketPolicy = new aws.s3.BucketPolicy("hoge", {
///     bucket: hogeBucket.id,
///     policy: hoge.then(hoge => hoge.json),
/// });
/// const foo = new aws.ssm.ResourceDataSync("foo", {
///     name: "foo",
///     s3Destination: {
///         bucketName: hogeBucket.bucket,
///         region: hogeBucket.region,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge_bucket = aws.s3.Bucket("hoge", bucket="tf-test-bucket-1234")
/// hoge = aws.iam.get_policy_document(statements=[
///     {
///         "sid": "SSMBucketPermissionsCheck",
///         "effect": "Allow",
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["ssm.amazonaws.com"],
///         }],
///         "actions": ["s3:GetBucketAcl"],
///         "resources": ["arn:aws:s3:::tf-test-bucket-1234"],
///     },
///     {
///         "sid": "SSMBucketDelivery",
///         "effect": "Allow",
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["ssm.amazonaws.com"],
///         }],
///         "actions": ["s3:PutObject"],
///         "resources": ["arn:aws:s3:::tf-test-bucket-1234/*"],
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "s3:x-amz-acl",
///             "values": ["bucket-owner-full-control"],
///         }],
///     },
/// ])
/// hoge_bucket_policy = aws.s3.BucketPolicy("hoge",
///     bucket=hoge_bucket.id,
///     policy=hoge.json)
/// foo = aws.ssm.ResourceDataSync("foo",
///     name="foo",
///     s3_destination={
///         "bucket_name": hoge_bucket.bucket,
///         "region": hoge_bucket.region,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hogeBucket = new Aws.S3.Bucket("hoge", new()
///     {
///         BucketName = "tf-test-bucket-1234",
///     });
///
///     var hoge = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "SSMBucketPermissionsCheck",
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "s3:GetBucketAcl",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::tf-test-bucket-1234",
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "SSMBucketDelivery",
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:s3:::tf-test-bucket-1234/*",
///                 },
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
///             },
///         },
///     });
///
///     var hogeBucketPolicy = new Aws.S3.BucketPolicy("hoge", new()
///     {
///         Bucket = hogeBucket.Id,
///         Policy = hoge.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var foo = new Aws.Ssm.ResourceDataSync("foo", new()
///     {
///         Name = "foo",
///         S3Destination = new Aws.Ssm.Inputs.ResourceDataSyncS3DestinationArgs
///         {
///             BucketName = hogeBucket.BucketName,
///             Region = hogeBucket.Region,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		hogeBucket, err := s3.NewBucket(ctx, "hoge", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test-bucket-1234"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hoge, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("SSMBucketPermissionsCheck"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"ssm.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"s3:GetBucketAcl",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::tf-test-bucket-1234",
/// 					},
/// 				},
/// 				{
/// 					Sid:    pulumi.StringRef("SSMBucketDelivery"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"ssm.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"s3:PutObject",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:s3:::tf-test-bucket-1234/*",
/// 					},
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringEquals",
/// 							Variable: "s3:x-amz-acl",
/// 							Values: []string{
/// 								"bucket-owner-full-control",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketPolicy(ctx, "hoge", &s3.BucketPolicyArgs{
/// 			Bucket: hogeBucket.ID(),
/// 			Policy: pulumi.String(hoge.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssm.NewResourceDataSync(ctx, "foo", &ssm.ResourceDataSyncArgs{
/// 			Name: pulumi.String("foo"),
/// 			S3Destination: &ssm.ResourceDataSyncS3DestinationArgs{
/// 				BucketName: hogeBucket.Bucket,
/// 				Region:     hogeBucket.Region,
/// 			},
/// 		})
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.ssm.ResourceDataSync;
/// import com.pulumi.aws.ssm.ResourceDataSyncArgs;
/// import com.pulumi.aws.ssm.inputs.ResourceDataSyncS3DestinationArgs;
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
///         var hogeBucket = new Bucket("hogeBucket", BucketArgs.builder()
///             .bucket("tf-test-bucket-1234")
///             .build());
///
///         final var hoge = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("SSMBucketPermissionsCheck")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("ssm.amazonaws.com")
///                         .build())
///                     .actions("s3:GetBucketAcl")
///                     .resources("arn:aws:s3:::tf-test-bucket-1234")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .sid("SSMBucketDelivery")
///                     .effect("Allow")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("ssm.amazonaws.com")
///                         .build())
///                     .actions("s3:PutObject")
///                     .resources("arn:aws:s3:::tf-test-bucket-1234/*")
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("s3:x-amz-acl")
///                         .values("bucket-owner-full-control")
///                         .build())
///                     .build())
///             .build());
///
///         var hogeBucketPolicy = new BucketPolicy("hogeBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(hogeBucket.id())
///             .policy(hoge.json())
///             .build());
///
///         var foo = new ResourceDataSync("foo", ResourceDataSyncArgs.builder()
///             .name("foo")
///             .s3Destination(ResourceDataSyncS3DestinationArgs.builder()
///                 .bucketName(hogeBucket.bucket())
///                 .region(hogeBucket.region())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hogeBucket:
///     type: aws:s3:Bucket
///     name: hoge
///     properties:
///       bucket: tf-test-bucket-1234
///   hogeBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: hoge
///     properties:
///       bucket: ${hogeBucket.id}
///       policy: ${hoge.json}
///   foo:
///     type: aws:ssm:ResourceDataSync
///     properties:
///       name: foo
///       s3Destination:
///         bucketName: ${hogeBucket.bucket}
///         region: ${hogeBucket.region}
/// variables:
///   hoge:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: SSMBucketPermissionsCheck
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - ssm.amazonaws.com
///             actions:
///               - s3:GetBucketAcl
///             resources:
///               - arn:aws:s3:::tf-test-bucket-1234
///           - sid: SSMBucketDelivery
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - ssm.amazonaws.com
///             actions:
///               - s3:PutObject
///             resources:
///               - arn:aws:s3:::tf-test-bucket-1234/*
///             conditions:
///               - test: StringEquals
///                 variable: s3:x-amz-acl
///                 values:
///                   - bucket-owner-full-control
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
          options ?? pulumi.CustomResourceOptions(),
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
  }) {
    return ResourceDataSync._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
}
