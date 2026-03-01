import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_policy_args.dart';
import 'bucket_policy_state.dart';

/// Attaches a policy to an S3 bucket resource.
///
/// > Policies can be attached to both S3 general purpose buckets and S3 directory buckets.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "my-tf-test-bucket"});
/// const allowAccessFromAnotherAccount = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: ["123456789012"],
///         }],
///         actions: [
///             "s3:GetObject",
///             "s3:ListBucket",
///         ],
///         resources: [
///             example.arn,
///             pulumi.interpolate`${example.arn}/*`,
///         ],
///     }],
/// });
/// const allowAccessFromAnotherAccountBucketPolicy = new aws.s3.BucketPolicy("allow_access_from_another_account", {
///     bucket: example.id,
///     policy: allowAccessFromAnotherAccount.apply(allowAccessFromAnotherAccount => allowAccessFromAnotherAccount.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="my-tf-test-bucket")
/// allow_access_from_another_account = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["123456789012"],
///     }],
///     "actions": [
///         "s3:GetObject",
///         "s3:ListBucket",
///     ],
///     "resources": [
///         example.arn,
///         example.arn.apply(lambda arn: f"{arn}/*"),
///     ],
/// }])
/// allow_access_from_another_account_bucket_policy = aws.s3.BucketPolicy("allow_access_from_another_account",
///     bucket=example.id,
///     policy=allow_access_from_another_account.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "my-tf-test-bucket",
///     });
///
///     var allowAccessFromAnotherAccount = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "123456789012",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:GetObject",
///                     "s3:ListBucket",
///                 },
///                 Resources = new[]
///                 {
///                     example.Arn,
///                     $"{example.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var allowAccessFromAnotherAccountBucketPolicy = new Aws.S3.BucketPolicy("allow_access_from_another_account", new()
///     {
///         Bucket = example.Id,
///         Policy = allowAccessFromAnotherAccount.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowAccessFromAnotherAccount := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("123456789012"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetObject"),
/// 						pulumi.String("s3:ListBucket"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn,
/// 						example.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "allow_access_from_another_account", &s3.BucketPolicyArgs{
/// 			Bucket: example.ID(),
/// 			Policy: pulumi.String(allowAccessFromAnotherAccount.ApplyT(func(allowAccessFromAnotherAccount iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &allowAccessFromAnotherAccount.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("my-tf-test-bucket")
///             .build());
///
///         final var allowAccessFromAnotherAccount = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("123456789012")
///                     .build())
///                 .actions(
///                     "s3:GetObject",
///                     "s3:ListBucket")
///                 .resources(
///                     example.arn(),
///                     example.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var allowAccessFromAnotherAccountBucketPolicy = new BucketPolicy("allowAccessFromAnotherAccountBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(example.id())
///             .policy(allowAccessFromAnotherAccount.applyValue(_allowAccessFromAnotherAccount -> _allowAccessFromAnotherAccount.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-test-bucket
///   allowAccessFromAnotherAccountBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: allow_access_from_another_account
///     properties:
///       bucket: ${example.id}
///       policy: ${allowAccessFromAnotherAccount.json}
/// variables:
///   allowAccessFromAnotherAccount:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - '123456789012'
///             actions:
///               - s3:GetObject
///               - s3:ListBucket
///             resources:
///               - ${example.arn}
///               - ${example.arn}/*
/// ```
///
///
/// > Only one `aws.s3.BucketPolicy` resource should be defined per S3 bucket. Defining multiple `aws.s3.BucketPolicy` resources with different Pulumi names but the same `bucket` value may result in unexpected policy overwrites. Each resource uses the `PutBucketPolicy` API, which replaces the entire existing policy without error or warning. Because Pulumi treats each resource independently, the policy applied last will silently override any previously applied policy.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the S3 bucket.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket policies using the bucket name. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketPolicy:BucketPolicy example my-tf-test-bucket
/// ```
class BucketPolicy extends pulumi.CustomResource {
  /// Name of the bucket to which to apply the policy.
  late final pulumi.Output<String> bucket;
  /// Text of the policy. Although this is a bucket policy rather than an IAM policy, the `aws.iam.getPolicyDocument` data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketPolicy]. {@macro pulumi_s3_bucket_policy_bucket_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketPolicy(
    String name, {
    BucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketPolicy:BucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [BucketPolicy] resource's state with the given [name] and [id].
  static BucketPolicy get(
    String name,
    pulumi.Input<String> id, {
    BucketPolicyState? state,
  }) {
    return BucketPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketPolicy:BucketPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
