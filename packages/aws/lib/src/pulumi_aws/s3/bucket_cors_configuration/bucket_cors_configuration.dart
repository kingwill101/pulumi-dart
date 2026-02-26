import 'package:pulumi/pulumi.dart';
import '../bucket_cors_configuration_cors_rule/bucket_cors_configuration_cors_rule.dart';
import 'bucket_cors_configuration_args.dart';

/// Provides an S3 bucket CORS configuration resource. For more information about CORS, go to [Enabling Cross-Origin Resource Sharing](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html) in the Amazon S3 User Guide.
///
/// > **NOTE:** S3 Buckets only support a single CORS configuration. Declaring multiple <span pulumi-lang-nodejs="`aws.s3.BucketCorsConfiguration`" pulumi-lang-dotnet="`aws.s3.BucketCorsConfiguration`" pulumi-lang-go="`s3.BucketCorsConfiguration`" pulumi-lang-python="`s3.BucketCorsConfiguration`" pulumi-lang-yaml="`aws.s3.BucketCorsConfiguration`" pulumi-lang-java="`aws.s3.BucketCorsConfiguration`">`aws.s3.BucketCorsConfiguration`</span> resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "mybucket"});
/// const exampleBucketCorsConfiguration = new aws.s3.BucketCorsConfiguration("example", {
/// bucket: example.id,
/// corsRules: [
/// {
/// allowedHeaders: ["*"],
/// allowedMethods: [
/// "PUT",
/// "POST",
/// ],
/// allowedOrigins: ["https://s3-website-test.domain.example"],
/// exposeHeaders: ["ETag"],
/// maxAgeSeconds: 3000,
/// },
/// {
/// allowedMethods: ["GET"],
/// allowedOrigins: ["*"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="mybucket")
/// example_bucket_cors_configuration = aws.s3.BucketCorsConfiguration("example",
/// bucket=example.id,
/// cors_rules=[
/// {
/// "allowed_headers": ["*"],
/// "allowed_methods": [
/// "PUT",
/// "POST",
/// ],
/// "allowed_origins": ["https://s3-website-test.domain.example"],
/// "expose_headers": ["ETag"],
/// "max_age_seconds": 3000,
/// },
/// {
/// "allowed_methods": ["GET"],
/// "allowed_origins": ["*"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "mybucket",
/// });
///
/// var exampleBucketCorsConfiguration = new Aws.S3.BucketCorsConfiguration("example", new()
/// {
/// Bucket = example.Id,
/// CorsRules = new[]
/// {
/// new Aws.S3.Inputs.BucketCorsConfigurationCorsRuleArgs
/// {
/// AllowedHeaders = new[]
/// {
/// "*",
/// },
/// AllowedMethods = new[]
/// {
/// "PUT",
/// "POST",
/// },
/// AllowedOrigins = new[]
/// {
/// "https://s3-website-test.domain.example",
/// },
/// ExposeHeaders = new[]
/// {
/// "ETag",
/// },
/// MaxAgeSeconds = 3000,
/// },
/// new Aws.S3.Inputs.BucketCorsConfigurationCorsRuleArgs
/// {
/// AllowedMethods = new[]
/// {
/// "GET",
/// },
/// AllowedOrigins = new[]
/// {
/// "*",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket: pulumi.String("mybucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketCorsConfiguration(ctx, "example", &s3.BucketCorsConfigurationArgs{
/// Bucket: example.ID(),
/// CorsRules: s3.BucketCorsConfigurationCorsRuleArray{
/// &s3.BucketCorsConfigurationCorsRuleArgs{
/// AllowedHeaders: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// AllowedMethods: pulumi.StringArray{
/// pulumi.String("PUT"),
/// pulumi.String("POST"),
/// },
/// AllowedOrigins: pulumi.StringArray{
/// pulumi.String("https://s3-website-test.domain.example"),
/// },
/// ExposeHeaders: pulumi.StringArray{
/// pulumi.String("ETag"),
/// },
/// MaxAgeSeconds: pulumi.Int(3000),
/// },
/// &s3.BucketCorsConfigurationCorsRuleArgs{
/// AllowedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// },
/// AllowedOrigins: pulumi.StringArray{
/// pulumi.String("*"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketCorsConfiguration;
/// import com.pulumi.aws.s3.BucketCorsConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketCorsConfigurationCorsRuleArgs;
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
/// var example = new Bucket("example", BucketArgs.builder()
/// .bucket("mybucket")
/// .build());
///
/// var exampleBucketCorsConfiguration = new BucketCorsConfiguration("exampleBucketCorsConfiguration", BucketCorsConfigurationArgs.builder()
/// .bucket(example.id())
/// .corsRules(
/// BucketCorsConfigurationCorsRuleArgs.builder()
/// .allowedHeaders("*")
/// .allowedMethods(
/// "PUT",
/// "POST")
/// .allowedOrigins("https://s3-website-test.domain.example")
/// .exposeHeaders("ETag")
/// .maxAgeSeconds(3000)
/// .build(),
/// BucketCorsConfigurationCorsRuleArgs.builder()
/// .allowedMethods("GET")
/// .allowedOrigins("*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// properties:
/// bucket: mybucket
/// exampleBucketCorsConfiguration:
/// type: aws:s3:BucketCorsConfiguration
/// name: example
/// properties:
/// bucket: ${example.id}
/// corsRules:
/// - allowedHeaders:
/// - '*'
/// allowedMethods:
/// - PUT
/// - POST
/// allowedOrigins:
/// - https://s3-website-test.domain.example
/// exposeHeaders:
/// - ETag
/// maxAgeSeconds: 3000
/// - allowedMethods:
/// - GET
/// allowedOrigins:
/// - '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> (String) S3 bucket name.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket CORS configuration using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> or using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketCorsConfiguration:BucketCorsConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketCorsConfiguration:BucketCorsConfiguration example bucket-name,123456789012
/// ```
class BucketCorsConfiguration extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Set of origins and methods (cross-origin access that you want to allow). See below. You can configure up to 100 rules.
  late final Output<List<BucketCorsConfigurationCorsRule>> corsRules;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BucketCorsConfiguration(
    String name, {
    BucketCorsConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketCorsConfiguration:BucketCorsConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.corsRules =
        registerOutput<List<BucketCorsConfigurationCorsRule>>('corsRules');
    this.expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
  }
}
