import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_args.dart';
import 'bucket_website_configuration_error_document.dart';
import 'bucket_website_configuration_index_document.dart';
import 'bucket_website_configuration_redirect_all_requests_to.dart';
import 'bucket_website_configuration_state.dart';

/// Provides an S3 bucket website configuration resource. For more information, see [Hosting Websites on S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With `routing_rule` configured
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketWebsiteConfiguration("example", {
///     bucket: exampleAwsS3Bucket.id,
///     indexDocument: {
///         suffix: "index.html",
///     },
///     errorDocument: {
///         key: "error.html",
///     },
///     routingRules: [{
///         condition: {
///             keyPrefixEquals: "docs/",
///         },
///         redirect: {
///             replaceKeyPrefixWith: "documents/",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketWebsiteConfiguration("example",
///     bucket=example_aws_s3_bucket["id"],
///     index_document={
///         "suffix": "index.html",
///     },
///     error_document={
///         "key": "error.html",
///     },
///     routing_rules=[{
///         "condition": {
///             "key_prefix_equals": "docs/",
///         },
///         "redirect": {
///             "replace_key_prefix_with": "documents/",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketWebsiteConfiguration("example", new()
///     {
///         Bucket = exampleAwsS3Bucket.Id,
///         IndexDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationIndexDocumentArgs
///         {
///             Suffix = "index.html",
///         },
///         ErrorDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationErrorDocumentArgs
///         {
///             Key = "error.html",
///         },
///         RoutingRules = new[]
///         {
///             new Aws.S3.Inputs.BucketWebsiteConfigurationRoutingRuleArgs
///             {
///                 Condition = new Aws.S3.Inputs.BucketWebsiteConfigurationRoutingRuleConditionArgs
///                 {
///                     KeyPrefixEquals = "docs/",
///                 },
///                 Redirect = new Aws.S3.Inputs.BucketWebsiteConfigurationRoutingRuleRedirectArgs
///                 {
///                     ReplaceKeyPrefixWith = "documents/",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketWebsiteConfiguration(ctx, "example", &s3.BucketWebsiteConfigurationArgs{
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 			IndexDocument: &s3.BucketWebsiteConfigurationIndexDocumentArgs{
/// 				Suffix: pulumi.String("index.html"),
/// 			},
/// 			ErrorDocument: &s3.BucketWebsiteConfigurationErrorDocumentArgs{
/// 				Key: pulumi.String("error.html"),
/// 			},
/// 			RoutingRules: s3.BucketWebsiteConfigurationRoutingRuleArray{
/// 				&s3.BucketWebsiteConfigurationRoutingRuleArgs{
/// 					Condition: &s3.BucketWebsiteConfigurationRoutingRuleConditionArgs{
/// 						KeyPrefixEquals: pulumi.String("docs/"),
/// 					},
/// 					Redirect: &s3.BucketWebsiteConfigurationRoutingRuleRedirectArgs{
/// 						ReplaceKeyPrefixWith: pulumi.String("documents/"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new BucketWebsiteConfiguration("example", BucketWebsiteConfigurationArgs.builder()
///             .bucket(exampleAwsS3Bucket.id())
///             .indexDocument(BucketWebsiteConfigurationIndexDocumentArgs.builder()
///                 .suffix("index.html")
///                 .build())
///             .errorDocument(BucketWebsiteConfigurationErrorDocumentArgs.builder()
///                 .key("error.html")
///                 .build())
///             .routingRules(BucketWebsiteConfigurationRoutingRuleArgs.builder()
///                 .condition(BucketWebsiteConfigurationRoutingRuleConditionArgs.builder()
///                     .keyPrefixEquals("docs/")
///                     .build())
///                 .redirect(BucketWebsiteConfigurationRoutingRuleRedirectArgs.builder()
///                     .replaceKeyPrefixWith("documents/")
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
///     type: aws:s3:BucketWebsiteConfiguration
///     properties:
///       bucket: ${exampleAwsS3Bucket.id}
///       indexDocument:
///         suffix: index.html
///       errorDocument:
///         key: error.html
///       routingRules:
///         - condition:
///             keyPrefixEquals: docs/
///           redirect:
///             replaceKeyPrefixWith: documents/
/// ```
///
///
/// ### With `routing_rules` configured
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketWebsiteConfiguration("example", {
///     bucket: exampleAwsS3Bucket.id,
///     indexDocument: {
///         suffix: "index.html",
///     },
///     errorDocument: {
///         key: "error.html",
///     },
///     routingRuleDetails: `[{
///     \\"Condition\\": {
///         \\"KeyPrefixEquals\\": \\"docs/\\"
///     },
///     \\"Redirect\\": {
///         \\"ReplaceKeyPrefixWith\\": \\"\\"
///     }
/// }]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketWebsiteConfiguration("example",
///     bucket=example_aws_s3_bucket["id"],
///     index_document={
///         "suffix": "index.html",
///     },
///     error_document={
///         "key": "error.html",
///     },
///     routing_rule_details="""[{
///     \"Condition\": {
///         \"KeyPrefixEquals\": \"docs/\"
///     },
///     \"Redirect\": {
///         \"ReplaceKeyPrefixWith\": \"\"
///     }
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
///     var example = new Aws.S3.BucketWebsiteConfiguration("example", new()
///     {
///         Bucket = exampleAwsS3Bucket.Id,
///         IndexDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationIndexDocumentArgs
///         {
///             Suffix = "index.html",
///         },
///         ErrorDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationErrorDocumentArgs
///         {
///             Key = "error.html",
///         },
///         RoutingRuleDetails = @"[{
///     \""Condition\"": {
///         \""KeyPrefixEquals\"": \""docs/\""
///     },
///     \""Redirect\"": {
///         \""ReplaceKeyPrefixWith\"": \""\""
///     }
/// }]
/// ",
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
/// 		_, err := s3.NewBucketWebsiteConfiguration(ctx, "example", &s3.BucketWebsiteConfigurationArgs{
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 			IndexDocument: &s3.BucketWebsiteConfigurationIndexDocumentArgs{
/// 				Suffix: pulumi.String("index.html"),
/// 			},
/// 			ErrorDocument: &s3.BucketWebsiteConfigurationErrorDocumentArgs{
/// 				Key: pulumi.String("error.html"),
/// 			},
/// 			RoutingRuleDetails: pulumi.String(`[{
///     \"Condition\": {
///         \"KeyPrefixEquals\": \"docs/\"
///     },
///     \"Redirect\": {
///         \"ReplaceKeyPrefixWith\": \"\"
///     }
/// }]
/// `),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new BucketWebsiteConfiguration("example", BucketWebsiteConfigurationArgs.builder()
///             .bucket(exampleAwsS3Bucket.id())
///             .indexDocument(BucketWebsiteConfigurationIndexDocumentArgs.builder()
///                 .suffix("index.html")
///                 .build())
///             .errorDocument(BucketWebsiteConfigurationErrorDocumentArgs.builder()
///                 .key("error.html")
///                 .build())
///             .routingRuleDetails("""
/// [{
///     \"Condition\": {
///         \"KeyPrefixEquals\": \"docs/\"
///     },
///     \"Redirect\": {
///         \"ReplaceKeyPrefixWith\": \"\"
///     }
/// }]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketWebsiteConfiguration
///     properties:
///       bucket: ${exampleAwsS3Bucket.id}
///       indexDocument:
///         suffix: index.html
///       errorDocument:
///         key: error.html
///       routingRuleDetails: |
///         [{
///             \"Condition\": {
///                 \"KeyPrefixEquals\": \"docs/\"
///             },
///             \"Redirect\": {
///                 \"ReplaceKeyPrefixWith\": \"\"
///             }
///         }]
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket website configuration using the `bucket` or using the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfiguration:BucketWebsiteConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfiguration:BucketWebsiteConfiguration example bucket-name,123456789012
/// ```
class BucketWebsiteConfiguration extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Name of the error document for the website. See below.
  late final pulumi.Output<BucketWebsiteConfigurationErrorDocument?> errorDocument;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Name of the index document for the website. See below.
  late final pulumi.Output<BucketWebsiteConfigurationIndexDocument?> indexDocument;
  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `error_document`, `index_document`, and `routing_rule`.
  late final pulumi.Output<BucketWebsiteConfigurationRedirectAllRequestsTo?> redirectAllRequestsTo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html)
  /// describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  late final pulumi.Output<String> routingRuleDetails;
  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> routingRules;
  /// Domain of the website endpoint. This is used to create Route 53 alias records.
  late final pulumi.Output<String> websiteDomain;
  /// Website endpoint.
  late final pulumi.Output<String> websiteEndpoint;

  /// Creates a new [BucketWebsiteConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketWebsiteConfiguration]. {@macro pulumi_s3_bucket_website_configuration_bucket_website_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketWebsiteConfiguration(
    String name, {
    BucketWebsiteConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketWebsiteConfiguration:BucketWebsiteConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteConfigurationErrorDocument?>('errorDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    indexDocument = registerOutput<BucketWebsiteConfigurationIndexDocument?>('indexDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationIndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectAllRequestsTo = registerOutput<BucketWebsiteConfigurationRedirectAllRequestsTo?>('redirectAllRequestsTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationRedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingRuleDetails = registerOutput<String>('routingRuleDetails');
    routingRules = registerOutput<List<Map<String, dynamic>>>('routingRules');
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }

  /// Gets an existing [BucketWebsiteConfiguration] resource's state with the given [name] and [id].
  static BucketWebsiteConfiguration get(
    String name,
    pulumi.Input<String> id, {
    BucketWebsiteConfigurationState? state,
  }) {
    return BucketWebsiteConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketWebsiteConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketWebsiteConfiguration:BucketWebsiteConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteConfigurationErrorDocument?>('errorDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    indexDocument = registerOutput<BucketWebsiteConfigurationIndexDocument?>('indexDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationIndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectAllRequestsTo = registerOutput<BucketWebsiteConfigurationRedirectAllRequestsTo?>('redirectAllRequestsTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationRedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingRuleDetails = registerOutput<String>('routingRuleDetails');
    routingRules = registerOutput<List<Map<String, dynamic>>>('routingRules');
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }
}
