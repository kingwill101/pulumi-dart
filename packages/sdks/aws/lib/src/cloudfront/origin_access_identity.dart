import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_access_identity_args.dart';
import 'origin_access_identity_state.dart';

/// Creates an Amazon CloudFront origin access identity.
///
/// For information about CloudFront distributions, see the
/// [Amazon CloudFront Developer Guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html). For more information on generating
/// origin access identities, see
/// [Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html).
///
/// ## Example Usage
///
/// The following example below creates a CloudFront origin access identity.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.OriginAccessIdentity("example", {comment: "Some comment"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.OriginAccessIdentity("example", comment="Some comment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.OriginAccessIdentity("example", new()
///     {
///         Comment = "Some comment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewOriginAccessIdentity(ctx, "example", &cloudfront.OriginAccessIdentityArgs{
/// 			Comment: pulumi.String("Some comment"),
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
/// resource "aws_cloudfront_originaccessidentity" "example" {
///   comment = "Some comment"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.OriginAccessIdentity;
/// import com.pulumi.aws.cloudfront.OriginAccessIdentityArgs;
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
///         var example = new OriginAccessIdentity("example", OriginAccessIdentityArgs.builder()
///             .comment("Some comment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:OriginAccessIdentity
///     properties:
///       comment: Some comment
/// ```
///
///
/// ### Using With CloudFront
///
/// Normally, when referencing an origin access identity in CloudFront, you need to
/// prefix the ID with the `origin-access-identity/cloudfront/` special path.
/// The `cloudfrontAccessIdentityPath` allows this to be circumvented.
/// The below snippet demonstrates use with the `s3OriginConfig` structure for the
/// `aws.cloudfront.Distribution` resource:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.Distribution("example", {origins: [{
///     s3OriginConfig: {
///         originAccessIdentity: exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath,
///     },
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.Distribution("example", origins=[{
///     "s3_origin_config": {
///         "origin_access_identity": example_aws_cloudfront_origin_access_identity["cloudfrontAccessIdentityPath"],
///     },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.Distribution("example", new()
///     {
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOriginArgs
///             {
///                 S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
///                 {
///                     OriginAccessIdentity = exampleAwsCloudfrontOriginAccessIdentity.CloudfrontAccessIdentityPath,
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewDistribution(ctx, "example", &cloudfront.DistributionArgs{
/// 			Origins: cloudfront.DistributionOriginArray{
/// 				&cloudfront.DistributionOriginArgs{
/// 					S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// 						OriginAccessIdentity: pulumi.Any(exampleAwsCloudfrontOriginAccessIdentity.CloudfrontAccessIdentityPath),
/// 					},
/// 				},
/// 			},
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
/// resource "aws_cloudfront_distribution" "example" {
///   origins {
///     s3_origin_config = {
///       origin_access_identity = exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginS3OriginConfigArgs;
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
///         var example = new Distribution("example", DistributionArgs.builder()
///             .origins(DistributionOriginArgs.builder()
///                 .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
///                     .originAccessIdentity(exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:Distribution
///     properties:
///       origins:
///         - s3OriginConfig:
///             originAccessIdentity: ${exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath}
/// ```
///
///
/// ### Updating your bucket policy
///
/// Note that the AWS API may translate the `s3CanonicalUserId` `CanonicalUser`
/// principal into an `AWS` IAM ARN principal when supplied in an
/// `aws.s3.Bucket` bucket policy, causing spurious diffs in Pulumi. If
/// you see this behavior, use the `iamArn` instead:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3Policy = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: [exampleAwsCloudfrontOriginAccessIdentity.iamArn],
///         }],
///         actions: ["s3:GetObject"],
///         resources: [`${exampleAwsS3Bucket.arn}/*`],
///     }],
/// });
/// const example = new aws.s3.BucketPolicy("example", {
///     bucket: exampleAwsS3Bucket.id,
///     policy: s3Policy.then(s3Policy => s3Policy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3_policy = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [example_aws_cloudfront_origin_access_identity["iamArn"]],
///     }],
///     "actions": ["s3:GetObject"],
///     "resources": [f"{example_aws_s3_bucket['arn']}/*"],
/// }])
/// example = aws.s3.BucketPolicy("example",
///     bucket=example_aws_s3_bucket["id"],
///     policy=s3_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3Policy = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             exampleAwsCloudfrontOriginAccessIdentity.IamArn,
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:GetObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{exampleAwsS3Bucket.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleAwsS3Bucket.Id,
///         Policy = s3Policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 		s3Policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: pulumi.StringArray{
/// 								exampleAwsCloudfrontOriginAccessIdentity.IamArn,
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"s3:GetObject",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("%v/*", exampleAwsS3Bucket.Arn),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 			Policy: pulumi.String(s3Policy.Json),
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
/// data "aws_iam_getpolicydocument" "s3Policy" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = [exampleAwsCloudfrontOriginAccessIdentity.iamArn]
///     }
///     actions   = ["s3:GetObject"]
///     resources = ["${exampleAwsS3Bucket.arn}/*"]
///   }
/// }
///
/// resource "aws_s3_bucketpolicy" "example" {
///   bucket = exampleAwsS3Bucket.id
///   policy = data.aws_iam_getpolicydocument.s3Policy.json
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
///         final var s3Policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(exampleAwsCloudfrontOriginAccessIdentity.iamArn())
///                     .build())
///                 .actions("s3:GetObject")
///                 .resources(String.format("%s/*", exampleAwsS3Bucket.arn()))
///                 .build())
///             .build());
///
///         var example = new BucketPolicy("example", BucketPolicyArgs.builder()
///             .bucket(exampleAwsS3Bucket.id())
///             .policy(s3Policy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketPolicy
///     properties:
///       bucket: ${exampleAwsS3Bucket.id}
///       policy: ${s3Policy.json}
/// variables:
///   s3Policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - ${exampleAwsCloudfrontOriginAccessIdentity.iamArn}
///             actions:
///               - s3:GetObject
///             resources:
///               - ${exampleAwsS3Bucket.arn}/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Origin Access Identities using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originAccessIdentity:OriginAccessIdentity origin_access E74FTE3AEXAMPLE
/// ```
class OriginAccessIdentity extends pulumi.CustomResource {
  /// The origin access identity ARN.
  late final pulumi.Output<String> arn;
  /// Internal value used by CloudFront to allow future
  /// updates to the origin access identity.
  late final pulumi.Output<String> callerReference;
  /// A shortcut to the full path for the
  /// origin access identity to use in CloudFront, see below.
  late final pulumi.Output<String> cloudfrontAccessIdentityPath;
  /// An optional comment for the origin access identity.
  late final pulumi.Output<String?> comment;
  /// The current version of the origin access identity's information.
  /// For example: `E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> etag;
  /// A pre-generated ARN for use in S3 bucket policies (see below).
  /// Example: `arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity
  /// E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> iamArn;
  /// The Amazon S3 canonical user ID for the origin
  /// access identity, which you use when giving the origin access identity read
  /// permission to an object in Amazon S3.
  late final pulumi.Output<String> s3CanonicalUserId;

  /// Creates a new [OriginAccessIdentity].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginAccessIdentity]. {@macro pulumi_cloudfront_origin_access_identity_origin_access_identity_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginAccessIdentity(
    String name, {
    OriginAccessIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessIdentity:OriginAccessIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    callerReference = registerOutput<String>('callerReference');
    cloudfrontAccessIdentityPath = registerOutput<String>('cloudfrontAccessIdentityPath');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    iamArn = registerOutput<String>('iamArn');
    s3CanonicalUserId = registerOutput<String>('s3CanonicalUserId');
  }

  /// Gets an existing [OriginAccessIdentity] resource's state with the given [name] and [id].
  static OriginAccessIdentity get(
    String name,
    pulumi.Input<String> id, {
    OriginAccessIdentityState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OriginAccessIdentity._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OriginAccessIdentity._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessIdentity:OriginAccessIdentity',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    callerReference = registerOutput<String>('callerReference');
    cloudfrontAccessIdentityPath = registerOutput<String>('cloudfrontAccessIdentityPath');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    iamArn = registerOutput<String>('iamArn');
    s3CanonicalUserId = registerOutput<String>('s3CanonicalUserId');
  }

  /// Creates a typed reference to an existing [OriginAccessIdentity] resource.
  OriginAccessIdentity.reference(String urn)
    : super(
        'aws:cloudfront/originAccessIdentity:OriginAccessIdentity',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    callerReference = registerOutput<String>('callerReference');
    cloudfrontAccessIdentityPath = registerOutput<String>('cloudfrontAccessIdentityPath');
    comment = registerOutput<String?>('comment');
    etag = registerOutput<String>('etag');
    iamArn = registerOutput<String>('iamArn');
    s3CanonicalUserId = registerOutput<String>('s3CanonicalUserId');
  }
}
