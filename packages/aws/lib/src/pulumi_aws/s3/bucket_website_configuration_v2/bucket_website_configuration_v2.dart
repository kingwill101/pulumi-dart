import 'package:pulumi/pulumi.dart';
import '../bucket_website_configuration_v2_error_document/bucket_website_configuration_v2_error_document.dart';
import '../bucket_website_configuration_v2_index_document/bucket_website_configuration_v2_index_document.dart';
import '../bucket_website_configuration_v2_redirect_all_requests_to/bucket_website_configuration_v2_redirect_all_requests_to.dart';
import '../bucket_website_configuration_v2_routing_rule/bucket_website_configuration_v2_routing_rule.dart';
import 'bucket_website_configuration_v2_args.dart';

/// Provides an S3 bucket website configuration resource. For more information, see [Hosting Websites on S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With <span pulumi-lang-nodejs="`routingRule`" pulumi-lang-dotnet="`RoutingRule`" pulumi-lang-go="`routingRule`" pulumi-lang-python="`routing_rule`" pulumi-lang-yaml="`routingRule`" pulumi-lang-java="`routingRule`">`routing_rule`</span> configured
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketWebsiteConfiguration("example", {
/// bucket: exampleAwsS3Bucket.id,
/// indexDocument: {
/// suffix: "index.html",
/// },
/// errorDocument: {
/// key: "error.html",
/// },
/// routingRules: [{
/// condition: {
/// keyPrefixEquals: "docs/",
/// },
/// redirect: {
/// replaceKeyPrefixWith: "documents/",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketWebsiteConfiguration("example",
/// bucket=example_aws_s3_bucket["id"],
/// index_document={
/// "suffix": "index.html",
/// },
/// error_document={
/// "key": "error.html",
/// },
/// routing_rules=[{
/// "condition": {
/// "key_prefix_equals": "docs/",
/// },
/// "redirect": {
/// "replace_key_prefix_with": "documents/",
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
/// var example = new Aws.S3.BucketWebsiteConfiguration("example", new()
/// {
/// Bucket = exampleAwsS3Bucket.Id,
/// IndexDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationIndexDocumentArgs
/// {
/// Suffix = "index.html",
/// },
/// ErrorDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationErrorDocumentArgs
/// {
/// Key = "error.html",
/// },
/// RoutingRules = new[]
/// {
/// new Aws.S3.Inputs.BucketWebsiteConfigurationRoutingRuleArgs
/// {
/// Condition = new Aws.S3.Inputs.BucketWebsiteConfigurationRoutingRuleConditionArgs
/// {
/// KeyPrefixEquals = "docs/",
/// },
/// Redirect = new Aws.S3.Inputs.BucketWebsiteConfigurationRoutingRuleRedirectArgs
/// {
/// ReplaceKeyPrefixWith = "documents/",
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
/// _, err := s3.NewBucketWebsiteConfiguration(ctx, "example", &s3.BucketWebsiteConfigurationArgs{
/// Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// IndexDocument: &s3.BucketWebsiteConfigurationIndexDocumentArgs{
/// Suffix: pulumi.String("index.html"),
/// },
/// ErrorDocument: &s3.BucketWebsiteConfigurationErrorDocumentArgs{
/// Key: pulumi.String("error.html"),
/// },
/// RoutingRules: s3.BucketWebsiteConfigurationRoutingRuleArray{
/// &s3.BucketWebsiteConfigurationRoutingRuleArgs{
/// Condition: &s3.BucketWebsiteConfigurationRoutingRuleConditionArgs{
/// KeyPrefixEquals: pulumi.String("docs/"),
/// },
/// Redirect: &s3.BucketWebsiteConfigurationRoutingRuleRedirectArgs{
/// ReplaceKeyPrefixWith: pulumi.String("documents/"),
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
/// import com.pulumi.aws.s3.BucketWebsiteConfiguration;
/// import com.pulumi.aws.s3.BucketWebsiteConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationIndexDocumentArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationErrorDocumentArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationRoutingRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationRoutingRuleConditionArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationRoutingRuleRedirectArgs;
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
/// var example = new BucketWebsiteConfiguration("example", BucketWebsiteConfigurationArgs.builder()
/// .bucket(exampleAwsS3Bucket.id())
/// .indexDocument(BucketWebsiteConfigurationIndexDocumentArgs.builder()
/// .suffix("index.html")
/// .build())
/// .errorDocument(BucketWebsiteConfigurationErrorDocumentArgs.builder()
/// .key("error.html")
/// .build())
/// .routingRules(BucketWebsiteConfigurationRoutingRuleArgs.builder()
/// .condition(BucketWebsiteConfigurationRoutingRuleConditionArgs.builder()
/// .keyPrefixEquals("docs/")
/// .build())
/// .redirect(BucketWebsiteConfigurationRoutingRuleRedirectArgs.builder()
/// .replaceKeyPrefixWith("documents/")
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
/// type: aws:s3:BucketWebsiteConfiguration
/// properties:
/// bucket: ${exampleAwsS3Bucket.id}
/// indexDocument:
/// suffix: index.html
/// errorDocument:
/// key: error.html
/// routingRules:
/// - condition:
/// keyPrefixEquals: docs/
/// redirect:
/// replaceKeyPrefixWith: documents/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With <span pulumi-lang-nodejs="`routingRules`" pulumi-lang-dotnet="`RoutingRules`" pulumi-lang-go="`routingRules`" pulumi-lang-python="`routing_rules`" pulumi-lang-yaml="`routingRules`" pulumi-lang-java="`routingRules`">`routing_rules`</span> configured
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketWebsiteConfiguration("example", {
/// bucket: exampleAwsS3Bucket.id,
/// indexDocument: {
/// suffix: "index.html",
/// },
/// errorDocument: {
/// key: "error.html",
/// },
/// routingRuleDetails: `[{
/// \\"Condition\\": {
/// \\"KeyPrefixEquals\\": \\"docs/\\"
/// },
/// \\"Redirect\\": {
/// \\"ReplaceKeyPrefixWith\\": \\"\\"
/// }
/// }]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketWebsiteConfiguration("example",
/// bucket=example_aws_s3_bucket["id"],
/// index_document={
/// "suffix": "index.html",
/// },
/// error_document={
/// "key": "error.html",
/// },
/// routing_rule_details="""[{
/// \"Condition\": {
/// \"KeyPrefixEquals\": \"docs/\"
/// },
/// \"Redirect\": {
/// \"ReplaceKeyPrefixWith\": \"\"
/// }
/// }]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.S3.BucketWebsiteConfiguration("example", new()
/// {
/// Bucket = exampleAwsS3Bucket.Id,
/// IndexDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationIndexDocumentArgs
/// {
/// Suffix = "index.html",
/// },
/// ErrorDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationErrorDocumentArgs
/// {
/// Key = "error.html",
/// },
/// RoutingRuleDetails = @"[{
/// \""Condition\"": {
/// \""KeyPrefixEquals\"": \""docs/\""
/// },
/// \""Redirect\"": {
/// \""ReplaceKeyPrefixWith\"": \""\""
/// }
/// }]
/// ",
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
/// _, err := s3.NewBucketWebsiteConfiguration(ctx, "example", &s3.BucketWebsiteConfigurationArgs{
/// Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// IndexDocument: &s3.BucketWebsiteConfigurationIndexDocumentArgs{
/// Suffix: pulumi.String("index.html"),
/// },
/// ErrorDocument: &s3.BucketWebsiteConfigurationErrorDocumentArgs{
/// Key: pulumi.String("error.html"),
/// },
/// RoutingRuleDetails: pulumi.String(`[{
/// \"Condition\": {
/// \"KeyPrefixEquals\": \"docs/\"
/// },
/// \"Redirect\": {
/// \"ReplaceKeyPrefixWith\": \"\"
/// }
/// }]
/// `),
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
/// import com.pulumi.aws.s3.BucketWebsiteConfiguration;
/// import com.pulumi.aws.s3.BucketWebsiteConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationIndexDocumentArgs;
/// import com.pulumi.aws.s3.inputs.BucketWebsiteConfigurationErrorDocumentArgs;
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
/// var example = new BucketWebsiteConfiguration("example", BucketWebsiteConfigurationArgs.builder()
/// .bucket(exampleAwsS3Bucket.id())
/// .indexDocument(BucketWebsiteConfigurationIndexDocumentArgs.builder()
/// .suffix("index.html")
/// .build())
/// .errorDocument(BucketWebsiteConfigurationErrorDocumentArgs.builder()
/// .key("error.html")
/// .build())
/// .routingRuleDetails("""
/// [{
/// \"Condition\": {
/// \"KeyPrefixEquals\": \"docs/\"
/// },
/// \"Redirect\": {
/// \"ReplaceKeyPrefixWith\": \"\"
/// }
/// }]
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:BucketWebsiteConfiguration
/// properties:
/// bucket: ${exampleAwsS3Bucket.id}
/// indexDocument:
/// suffix: index.html
/// errorDocument:
/// key: error.html
/// routingRuleDetails: |
/// [{
/// \"Condition\": {
/// \"KeyPrefixEquals\": \"docs/\"
/// },
/// \"Redirect\": {
/// \"ReplaceKeyPrefixWith\": \"\"
/// }
/// }]
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
/// **Using `pulumi import` to import** S3 bucket website configuration using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> or using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span>:
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the <span pulumi-lang-nodejs="`bucket`" pulumi-lang-dotnet="`Bucket`" pulumi-lang-go="`bucket`" pulumi-lang-python="`bucket`" pulumi-lang-yaml="`bucket`" pulumi-lang-java="`bucket`">`bucket`</span> and <span pulumi-lang-nodejs="`expectedBucketOwner`" pulumi-lang-dotnet="`ExpectedBucketOwner`" pulumi-lang-go="`expectedBucketOwner`" pulumi-lang-python="`expected_bucket_owner`" pulumi-lang-yaml="`expectedBucketOwner`" pulumi-lang-java="`expectedBucketOwner`">`expected_bucket_owner`</span> separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2 example bucket-name,123456789012
/// ```
class BucketWebsiteConfigurationV2 extends CustomResource {
  /// Name of the bucket.
  late final Output<String> bucket;

  /// Name of the error document for the website. See below.
  late final Output<BucketWebsiteConfigurationV2ErrorDocument?> errorDocument;

  /// Account ID of the expected bucket owner.
  late final Output<String?> expectedBucketOwner;

  /// Name of the index document for the website. See below.
  late final Output<BucketWebsiteConfigurationV2IndexDocument?> indexDocument;

  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with <span pulumi-lang-nodejs="`errorDocument`" pulumi-lang-dotnet="`ErrorDocument`" pulumi-lang-go="`errorDocument`" pulumi-lang-python="`error_document`" pulumi-lang-yaml="`errorDocument`" pulumi-lang-java="`errorDocument`">`error_document`</span>, <span pulumi-lang-nodejs="`indexDocument`" pulumi-lang-dotnet="`IndexDocument`" pulumi-lang-go="`indexDocument`" pulumi-lang-python="`index_document`" pulumi-lang-yaml="`indexDocument`" pulumi-lang-java="`indexDocument`">`index_document`</span>, and <span pulumi-lang-nodejs="`routingRule`" pulumi-lang-dotnet="`RoutingRule`" pulumi-lang-go="`routingRule`" pulumi-lang-python="`routing_rule`" pulumi-lang-yaml="`routingRule`" pulumi-lang-java="`routingRule`">`routing_rule`</span>.
  late final Output<BucketWebsiteConfigurationV2RedirectAllRequestsTo?>
      redirectAllRequestsTo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  late final Output<String> routingRuleDetails;

  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  late final Output<List<BucketWebsiteConfigurationV2RoutingRule>> routingRules;

  /// Domain of the website endpoint. This is used to create Route 53 alias records.
  late final Output<String> websiteDomain;

  /// Website endpoint.
  late final Output<String> websiteEndpoint;

  BucketWebsiteConfigurationV2(
    String name, {
    BucketWebsiteConfigurationV2Args? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.errorDocument =
        Output.createUnknown<BucketWebsiteConfigurationV2ErrorDocument?>();
    this.expectedBucketOwner = Output.createUnknown<String?>();
    this.indexDocument =
        Output.createUnknown<BucketWebsiteConfigurationV2IndexDocument?>();
    this.redirectAllRequestsTo = Output.createUnknown<
        BucketWebsiteConfigurationV2RedirectAllRequestsTo?>();
    this.region = Output.createUnknown<String>();
    this.routingRuleDetails = Output.createUnknown<String>();
    this.routingRules =
        Output.createUnknown<List<BucketWebsiteConfigurationV2RoutingRule>>();
    this.websiteDomain = Output.createUnknown<String>();
    this.websiteEndpoint = Output.createUnknown<String>();
  }
}
