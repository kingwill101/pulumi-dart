import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_website_configuration_v2_args.dart';
import 'bucket_website_configuration_v2_error_document.dart';
import 'bucket_website_configuration_v2_index_document.dart';
import 'bucket_website_configuration_v2_redirect_all_requests_to.dart';
import 'bucket_website_configuration_v2_routing_rule.dart';
import 'bucket_website_configuration_v2_state.dart';

/// Provides an S3 bucket website configuration resource. For more information, see [Hosting Websites on S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### With `routingRule` configured
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketWebsiteConfiguration("example", {
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
///     bucket: exampleAwsS3Bucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketWebsiteConfiguration("example",
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
///     }],
///     bucket=example_aws_s3_bucket["id"])
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
///         Bucket = exampleAwsS3Bucket.Id,
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
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
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
/// resource "aws_s3_bucketwebsiteconfiguration" "example" {
///   index_document = {
///     suffix = "index.html"
///   }
///   error_document = {
///     key = "error.html"
///   }
///   routing_rules {
///     condition = {
///       key_prefix_equals = "docs/"
///     }
///     redirect = {
///       replace_key_prefix_with = "documents/"
///     }
///   }
///   bucket = exampleAwsS3Bucket.id
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
///         var example = new BucketWebsiteConfiguration("example", BucketWebsiteConfigurationArgs.builder()
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
///             .bucket(exampleAwsS3Bucket.id())
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
///       indexDocument:
///         suffix: index.html
///       errorDocument:
///         key: error.html
///       routingRules:
///         - condition:
///             keyPrefixEquals: docs/
///           redirect:
///             replaceKeyPrefixWith: documents/
///       bucket: ${exampleAwsS3Bucket.id}
/// ```
///
///
/// ### With `routingRules` configured
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketWebsiteConfiguration("example", {
///     indexDocument: {
///         suffix: "index.html",
///     },
///     errorDocument: {
///         key: "error.html",
///     },
///     bucket: exampleAwsS3Bucket.id,
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
///     index_document={
///         "suffix": "index.html",
///     },
///     error_document={
///         "key": "error.html",
///     },
///     bucket=example_aws_s3_bucket["id"],
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
///         IndexDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationIndexDocumentArgs
///         {
///             Suffix = "index.html",
///         },
///         ErrorDocument = new Aws.S3.Inputs.BucketWebsiteConfigurationErrorDocumentArgs
///         {
///             Key = "error.html",
///         },
///         Bucket = exampleAwsS3Bucket.Id,
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
/// 			IndexDocument: &s3.BucketWebsiteConfigurationIndexDocumentArgs{
/// 				Suffix: pulumi.String("index.html"),
/// 			},
/// 			ErrorDocument: &s3.BucketWebsiteConfigurationErrorDocumentArgs{
/// 				Key: pulumi.String("error.html"),
/// 			},
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketwebsiteconfiguration" "example" {
///   index_document = {
///     suffix = "index.html"
///   }
///   error_document = {
///     key = "error.html"
///   }
///   bucket               = exampleAwsS3Bucket.id
///   routing_rule_details = "[{\n    \\\"Condition\\\": {\n        \\\"KeyPrefixEquals\\\": \\\"docs/\\\"\n    },\n    \\\"Redirect\\\": {\n        \\\"ReplaceKeyPrefixWith\\\": \\\"\\\"\n    }\n}]\n"
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
///         var example = new BucketWebsiteConfiguration("example", BucketWebsiteConfigurationArgs.builder()
///             .indexDocument(BucketWebsiteConfigurationIndexDocumentArgs.builder()
///                 .suffix("index.html")
///                 .build())
///             .errorDocument(BucketWebsiteConfigurationErrorDocumentArgs.builder()
///                 .key("error.html")
///                 .build())
///             .bucket(exampleAwsS3Bucket.id())
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
///       indexDocument:
///         suffix: index.html
///       errorDocument:
///         key: error.html
///       bucket: ${exampleAwsS3Bucket.id}
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
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// **Using `pulumi import` to import** S3 bucket website configuration using the `bucket` or using the `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2 example bucket-name,123456789012
/// ```
class BucketWebsiteConfigurationV2 extends pulumi.CustomResource {
  /// Name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Name of the error document for the website. See below.
  late final pulumi.Output<BucketWebsiteConfigurationV2ErrorDocument?> errorDocument;
  /// Account ID of the expected bucket owner.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Name of the index document for the website. See below.
  late final pulumi.Output<BucketWebsiteConfigurationV2IndexDocument?> indexDocument;
  /// Redirect behavior for every request to this bucket's website endpoint. See below. Conflicts with `errorDocument`, `indexDocument`, and `routingRule`.
  late final pulumi.Output<BucketWebsiteConfigurationV2RedirectAllRequestsTo?> redirectAllRequestsTo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// JSON array containing [routing rules](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-websiteconfiguration-routingrules.html) describing redirect behavior and when redirects are applied. Use this parameter when your routing rules contain empty String values (`""`) as seen in the example above.
  late final pulumi.Output<String> routingRuleDetails;
  /// List of rules that define when a redirect is applied and the redirect behavior. See below.
  late final pulumi.Output<List<BucketWebsiteConfigurationV2RoutingRule>> routingRules;
  /// Domain of the website endpoint. This is used to create Route 53 alias records.
  late final pulumi.Output<String> websiteDomain;
  /// Website endpoint.
  late final pulumi.Output<String> websiteEndpoint;

  /// Creates a new [BucketWebsiteConfigurationV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketWebsiteConfigurationV2]. {@macro pulumi_s3_bucket_website_configuration_v2_bucket_website_configuration_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketWebsiteConfigurationV2(
    String name, {
    BucketWebsiteConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteConfigurationV2ErrorDocument?>('errorDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2ErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    indexDocument = registerOutput<BucketWebsiteConfigurationV2IndexDocument?>('indexDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2IndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectAllRequestsTo = registerOutput<BucketWebsiteConfigurationV2RedirectAllRequestsTo?>('redirectAllRequestsTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingRuleDetails = registerOutput<String>('routingRuleDetails');
    routingRules = registerOutput<List<BucketWebsiteConfigurationV2RoutingRule>>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketWebsiteConfigurationV2RoutingRule>(guardedValue, (value) => BucketWebsiteConfigurationV2RoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }

  /// Gets an existing [BucketWebsiteConfigurationV2] resource's state with the given [name] and [id].
  static BucketWebsiteConfigurationV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketWebsiteConfigurationV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketWebsiteConfigurationV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketWebsiteConfigurationV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteConfigurationV2ErrorDocument?>('errorDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2ErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    indexDocument = registerOutput<BucketWebsiteConfigurationV2IndexDocument?>('indexDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2IndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectAllRequestsTo = registerOutput<BucketWebsiteConfigurationV2RedirectAllRequestsTo?>('redirectAllRequestsTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingRuleDetails = registerOutput<String>('routingRuleDetails');
    routingRules = registerOutput<List<BucketWebsiteConfigurationV2RoutingRule>>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketWebsiteConfigurationV2RoutingRule>(guardedValue, (value) => BucketWebsiteConfigurationV2RoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }

  /// Creates a typed reference to an existing [BucketWebsiteConfigurationV2] resource.
  BucketWebsiteConfigurationV2.reference(String urn)
    : super(
        'aws:s3/bucketWebsiteConfigurationV2:BucketWebsiteConfigurationV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    errorDocument = registerOutput<BucketWebsiteConfigurationV2ErrorDocument?>('errorDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2ErrorDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    indexDocument = registerOutput<BucketWebsiteConfigurationV2IndexDocument?>('indexDocument', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2IndexDocument.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectAllRequestsTo = registerOutput<BucketWebsiteConfigurationV2RedirectAllRequestsTo?>('redirectAllRequestsTo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketWebsiteConfigurationV2RedirectAllRequestsTo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    routingRuleDetails = registerOutput<String>('routingRuleDetails');
    routingRules = registerOutput<List<BucketWebsiteConfigurationV2RoutingRule>>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketWebsiteConfigurationV2RoutingRule>(guardedValue, (value) => BucketWebsiteConfigurationV2RoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    websiteDomain = registerOutput<String>('websiteDomain');
    websiteEndpoint = registerOutput<String>('websiteEndpoint');
  }
}
