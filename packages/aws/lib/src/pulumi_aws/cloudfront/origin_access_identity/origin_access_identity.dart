import 'package:pulumi/pulumi.dart';
import 'origin_access_identity_args.dart';

/// Creates an Amazon CloudFront origin access identity.
///
/// For information about CloudFront distributions, see the
/// [Amazon CloudFront Developer Guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html). For more information on generating
/// origin access identities, see
/// [Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content][2].
///
/// ## Example Usage
///
/// The following example below creates a CloudFront origin access identity.
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.CloudFront.OriginAccessIdentity("example", new()
/// {
/// Comment = "Some comment",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewOriginAccessIdentity(ctx, "example", &cloudfront.OriginAccessIdentityArgs{
/// Comment: pulumi.String("Some comment"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new OriginAccessIdentity("example", OriginAccessIdentityArgs.builder()
/// .comment("Some comment")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:OriginAccessIdentity
/// properties:
/// comment: Some comment
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Using With CloudFront
///
/// Normally, when referencing an origin access identity in CloudFront, you need to
/// prefix the ID with the `origin-access-identity/cloudfront/` special path.
/// The <span pulumi-lang-nodejs="`cloudfrontAccessIdentityPath`" pulumi-lang-dotnet="`CloudfrontAccessIdentityPath`" pulumi-lang-go="`cloudfrontAccessIdentityPath`" pulumi-lang-python="`cloudfront_access_identity_path`" pulumi-lang-yaml="`cloudfrontAccessIdentityPath`" pulumi-lang-java="`cloudfrontAccessIdentityPath`">`cloudfront_access_identity_path`</span> allows this to be circumvented.
/// The below snippet demonstrates use with the <span pulumi-lang-nodejs="`s3OriginConfig`" pulumi-lang-dotnet="`S3OriginConfig`" pulumi-lang-go="`s3OriginConfig`" pulumi-lang-python="`s3_origin_config`" pulumi-lang-yaml="`s3OriginConfig`" pulumi-lang-java="`s3OriginConfig`">`s3_origin_config`</span> structure for the
/// <span pulumi-lang-nodejs="`aws.cloudfront.Distribution`" pulumi-lang-dotnet="`aws.cloudfront.Distribution`" pulumi-lang-go="`cloudfront.Distribution`" pulumi-lang-python="`cloudfront.Distribution`" pulumi-lang-yaml="`aws.cloudfront.Distribution`" pulumi-lang-java="`aws.cloudfront.Distribution`">`aws.cloudfront.Distribution`</span> resource:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.Distribution("example", {origins: [{
/// s3OriginConfig: {
/// originAccessIdentity: exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath,
/// },
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.Distribution("example", origins=[{
/// "s3_origin_config": {
/// "origin_access_identity": example_aws_cloudfront_origin_access_identity["cloudfrontAccessIdentityPath"],
/// },
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
/// var example = new Aws.CloudFront.Distribution("example", new()
/// {
/// Origins = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOriginArgs
/// {
/// S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
/// {
/// OriginAccessIdentity = exampleAwsCloudfrontOriginAccessIdentity.CloudfrontAccessIdentityPath,
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewDistribution(ctx, "example", &cloudfront.DistributionArgs{
/// Origins: cloudfront.DistributionOriginArray{
/// &cloudfront.DistributionOriginArgs{
/// S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// OriginAccessIdentity: pulumi.Any(exampleAwsCloudfrontOriginAccessIdentity.CloudfrontAccessIdentityPath),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Distribution("example", DistributionArgs.builder()
/// .origins(DistributionOriginArgs.builder()
/// .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
/// .originAccessIdentity(exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:Distribution
/// properties:
/// origins:
/// - s3OriginConfig:
/// originAccessIdentity: ${exampleAwsCloudfrontOriginAccessIdentity.cloudfrontAccessIdentityPath}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Updating your bucket policy
///
/// Note that the AWS API may translate the <span pulumi-lang-nodejs="`s3CanonicalUserId`" pulumi-lang-dotnet="`S3CanonicalUserId`" pulumi-lang-go="`s3CanonicalUserId`" pulumi-lang-python="`s3_canonical_user_id`" pulumi-lang-yaml="`s3CanonicalUserId`" pulumi-lang-java="`s3CanonicalUserId`">`s3_canonical_user_id`</span> `CanonicalUser`
/// principal into an `AWS` IAM ARN principal when supplied in an
/// <span pulumi-lang-nodejs="`aws.s3.Bucket`" pulumi-lang-dotnet="`aws.s3.Bucket`" pulumi-lang-go="`s3.Bucket`" pulumi-lang-python="`s3.Bucket`" pulumi-lang-yaml="`aws.s3.Bucket`" pulumi-lang-java="`aws.s3.Bucket`">`aws.s3.Bucket`</span> bucket policy, causing spurious diffs. If
/// you see this behavior, use the <span pulumi-lang-nodejs="`iamArn`" pulumi-lang-dotnet="`IamArn`" pulumi-lang-go="`iamArn`" pulumi-lang-python="`iam_arn`" pulumi-lang-yaml="`iamArn`" pulumi-lang-java="`iamArn`">`iam_arn`</span> instead:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3Policy = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["s3:GetObject"],
/// resources: [`${exampleAwsS3Bucket.arn}/*`],
/// principals: [{
/// type: "AWS",
/// identifiers: [exampleAwsCloudfrontOriginAccessIdentity.iamArn],
/// }],
/// }],
/// });
/// const example = new aws.s3.BucketPolicy("example", {
/// bucket: exampleAwsS3Bucket.id,
/// policy: s3Policy.then(s3Policy => s3Policy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3_policy = aws.iam.get_policy_document(statements=[{
/// "actions": ["s3:GetObject"],
/// "resources": [f"{example_aws_s3_bucket['arn']}/*"],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": [example_aws_cloudfront_origin_access_identity["iamArn"]],
/// }],
/// }])
/// example = aws.s3.BucketPolicy("example",
/// bucket=example_aws_s3_bucket["id"],
/// policy=s3_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var s3Policy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "s3:GetObject",
/// },
/// Resources = new[]
/// {
/// $"{exampleAwsS3Bucket.Arn}/*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// exampleAwsCloudfrontOriginAccessIdentity.IamArn,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var example = new Aws.S3.BucketPolicy("example", new()
/// {
/// Bucket = exampleAwsS3Bucket.Id,
/// Policy = s3Policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// s3Policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "s3:GetObject",
/// },
/// Resources: []string{
/// fmt.Sprintf("%v/*", exampleAwsS3Bucket.Arn),
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// exampleAwsCloudfrontOriginAccessIdentity.IamArn,
/// },
/// },
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// Policy: pulumi.String(s3Policy.Json),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var s3Policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("s3:GetObject")
/// .resources(String.format("%s/*", exampleAwsS3Bucket.arn()))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(exampleAwsCloudfrontOriginAccessIdentity.iamArn())
/// .build())
/// .build())
/// .build());
///
/// var example = new BucketPolicy("example", BucketPolicyArgs.builder()
/// .bucket(exampleAwsS3Bucket.id())
/// .policy(s3Policy.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:BucketPolicy
/// properties:
/// bucket: ${exampleAwsS3Bucket.id}
/// policy: ${s3Policy.json}
/// variables:
/// s3Policy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - s3:GetObject
/// resources:
/// - ${exampleAwsS3Bucket.arn}/*
/// principals:
/// - type: AWS
/// identifiers:
/// - ${exampleAwsCloudfrontOriginAccessIdentity.iamArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html
/// [2]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Origin Access Identities using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originAccessIdentity:OriginAccessIdentity origin_access E74FTE3AEXAMPLE
/// ```
class OriginAccessIdentity extends CustomResource {
  /// The origin access identity ARN.
  late final Output<String> arn;

  /// Internal value used by CloudFront to allow future
  /// updates to the origin access identity.
  late final Output<String> callerReference;

  /// A shortcut to the full path for the
  /// origin access identity to use in CloudFront, see below.
  late final Output<String> cloudfrontAccessIdentityPath;

  /// An optional comment for the origin access identity.
  late final Output<String?> comment;

  /// The current version of the origin access identity's information.
  /// For example: `E2QWRUHAPOMQZL`.
  late final Output<String> etag;

  /// A pre-generated ARN for use in S3 bucket policies (see below).
  /// Example: `arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity
  /// E2QWRUHAPOMQZL`.
  late final Output<String> iamArn;

  /// The Amazon S3 canonical user ID for the origin
  /// access identity, which you use when giving the origin access identity read
  /// permission to an object in Amazon S3.
  late final Output<String> s3CanonicalUserId;

  OriginAccessIdentity(
    String name, {
    OriginAccessIdentityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originAccessIdentity:OriginAccessIdentity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.callerReference = Output.createUnknown<String>();
    this.cloudfrontAccessIdentityPath = Output.createUnknown<String>();
    this.comment = Output.createUnknown<String?>();
    this.etag = Output.createUnknown<String>();
    this.iamArn = Output.createUnknown<String>();
    this.s3CanonicalUserId = Output.createUnknown<String>();
  }
}
