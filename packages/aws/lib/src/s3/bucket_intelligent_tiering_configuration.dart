import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_intelligent_tiering_configuration_args.dart';
import 'bucket_intelligent_tiering_configuration_filter.dart';
import 'bucket_intelligent_tiering_configuration_tiering.dart';

/// Provides an [S3 Intelligent-Tiering](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering.html) configuration resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add intelligent tiering configuration for entire S3 bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_entire_bucket = new aws.s3.BucketIntelligentTieringConfiguration("example-entire-bucket", {
///     bucket: example.id,
///     name: "EntireBucket",
///     tierings: [
///         {
///             accessTier: "DEEP_ARCHIVE_ACCESS",
///             days: 180,
///         },
///         {
///             accessTier: "ARCHIVE_ACCESS",
///             days: 125,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_entire_bucket = aws.s3.BucketIntelligentTieringConfiguration("example-entire-bucket",
///     bucket=example.id,
///     name="EntireBucket",
///     tierings=[
///         {
///             "access_tier": "DEEP_ARCHIVE_ACCESS",
///             "days": 180,
///         },
///         {
///             "access_tier": "ARCHIVE_ACCESS",
///             "days": 125,
///         },
///     ])
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
///         BucketName = "example",
///     });
///
///     var example_entire_bucket = new Aws.S3.BucketIntelligentTieringConfiguration("example-entire-bucket", new()
///     {
///         Bucket = example.Id,
///         Name = "EntireBucket",
///         Tierings = new[]
///         {
///             new Aws.S3.Inputs.BucketIntelligentTieringConfigurationTieringArgs
///             {
///                 AccessTier = "DEEP_ARCHIVE_ACCESS",
///                 Days = 180,
///             },
///             new Aws.S3.Inputs.BucketIntelligentTieringConfigurationTieringArgs
///             {
///                 AccessTier = "ARCHIVE_ACCESS",
///                 Days = 125,
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketIntelligentTieringConfiguration(ctx, "example-entire-bucket", &s3.BucketIntelligentTieringConfigurationArgs{
/// 			Bucket: example.ID(),
/// 			Name:   pulumi.String("EntireBucket"),
/// 			Tierings: s3.BucketIntelligentTieringConfigurationTieringArray{
/// 				&s3.BucketIntelligentTieringConfigurationTieringArgs{
/// 					AccessTier: pulumi.String("DEEP_ARCHIVE_ACCESS"),
/// 					Days:       pulumi.Int(180),
/// 				},
/// 				&s3.BucketIntelligentTieringConfigurationTieringArgs{
/// 					AccessTier: pulumi.String("ARCHIVE_ACCESS"),
/// 					Days:       pulumi.Int(125),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketIntelligentTieringConfiguration;
/// import com.pulumi.aws.s3.BucketIntelligentTieringConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketIntelligentTieringConfigurationTieringArgs;
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
///             .bucket("example")
///             .build());
///
///         var example_entire_bucket = new BucketIntelligentTieringConfiguration("example-entire-bucket", BucketIntelligentTieringConfigurationArgs.builder()
///             .bucket(example.id())
///             .name("EntireBucket")
///             .tierings(
///                 BucketIntelligentTieringConfigurationTieringArgs.builder()
///                     .accessTier("DEEP_ARCHIVE_ACCESS")
///                     .days(180)
///                     .build(),
///                 BucketIntelligentTieringConfigurationTieringArgs.builder()
///                     .accessTier("ARCHIVE_ACCESS")
///                     .days(125)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-entire-bucket:
///     type: aws:s3:BucketIntelligentTieringConfiguration
///     properties:
///       bucket: ${example.id}
///       name: EntireBucket
///       tierings:
///         - accessTier: DEEP_ARCHIVE_ACCESS
///           days: 180
///         - accessTier: ARCHIVE_ACCESS
///           days: 125
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
/// ```
///
///
/// ### Add intelligent tiering configuration with S3 object filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_filtered = new aws.s3.BucketIntelligentTieringConfiguration("example-filtered", {
///     bucket: example.id,
///     name: "ImportantBlueDocuments",
///     status: "Disabled",
///     filter: {
///         prefix: "documents/",
///         tags: {
///             priority: "high",
///             "class": "blue",
///         },
///     },
///     tierings: [{
///         accessTier: "ARCHIVE_ACCESS",
///         days: 125,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_filtered = aws.s3.BucketIntelligentTieringConfiguration("example-filtered",
///     bucket=example.id,
///     name="ImportantBlueDocuments",
///     status="Disabled",
///     filter={
///         "prefix": "documents/",
///         "tags": {
///             "priority": "high",
///             "class": "blue",
///         },
///     },
///     tierings=[{
///         "access_tier": "ARCHIVE_ACCESS",
///         "days": 125,
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var example_filtered = new Aws.S3.BucketIntelligentTieringConfiguration("example-filtered", new()
///     {
///         Bucket = example.Id,
///         Name = "ImportantBlueDocuments",
///         Status = "Disabled",
///         Filter = new Aws.S3.Inputs.BucketIntelligentTieringConfigurationFilterArgs
///         {
///             Prefix = "documents/",
///             Tags =
///             {
///                 { "priority", "high" },
///                 { "class", "blue" },
///             },
///         },
///         Tierings = new[]
///         {
///             new Aws.S3.Inputs.BucketIntelligentTieringConfigurationTieringArgs
///             {
///                 AccessTier = "ARCHIVE_ACCESS",
///                 Days = 125,
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketIntelligentTieringConfiguration(ctx, "example-filtered", &s3.BucketIntelligentTieringConfigurationArgs{
/// 			Bucket: example.ID(),
/// 			Name:   pulumi.String("ImportantBlueDocuments"),
/// 			Status: pulumi.String("Disabled"),
/// 			Filter: &s3.BucketIntelligentTieringConfigurationFilterArgs{
/// 				Prefix: pulumi.String("documents/"),
/// 				Tags: pulumi.StringMap{
/// 					"priority": pulumi.String("high"),
/// 					"class":    pulumi.String("blue"),
/// 				},
/// 			},
/// 			Tierings: s3.BucketIntelligentTieringConfigurationTieringArray{
/// 				&s3.BucketIntelligentTieringConfigurationTieringArgs{
/// 					AccessTier: pulumi.String("ARCHIVE_ACCESS"),
/// 					Days:       pulumi.Int(125),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketIntelligentTieringConfiguration;
/// import com.pulumi.aws.s3.BucketIntelligentTieringConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketIntelligentTieringConfigurationFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketIntelligentTieringConfigurationTieringArgs;
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
///             .bucket("example")
///             .build());
///
///         var example_filtered = new BucketIntelligentTieringConfiguration("example-filtered", BucketIntelligentTieringConfigurationArgs.builder()
///             .bucket(example.id())
///             .name("ImportantBlueDocuments")
///             .status("Disabled")
///             .filter(BucketIntelligentTieringConfigurationFilterArgs.builder()
///                 .prefix("documents/")
///                 .tags(Map.ofEntries(
///                     Map.entry("priority", "high"),
///                     Map.entry("class", "blue")
///                 ))
///                 .build())
///             .tierings(BucketIntelligentTieringConfigurationTieringArgs.builder()
///                 .accessTier("ARCHIVE_ACCESS")
///                 .days(125)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-filtered:
///     type: aws:s3:BucketIntelligentTieringConfiguration
///     properties:
///       bucket: ${example.id}
///       name: ImportantBlueDocuments
///       status: Disabled
///       filter:
///         prefix: documents/
///         tags:
///           priority: high
///           class: blue
///       tierings:
///         - accessTier: ARCHIVE_ACCESS
///           days: 125
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket intelligent tiering configurations using `bucket:name`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketIntelligentTieringConfiguration:BucketIntelligentTieringConfiguration my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class BucketIntelligentTieringConfiguration extends pulumi.CustomResource {
  /// Name of the bucket this intelligent tiering configuration is associated with.
  late final pulumi.Output<String> bucket;
  /// Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
  late final pulumi.Output<BucketIntelligentTieringConfigurationFilter?> filter;
  /// Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the status of the configuration. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String?> status;
  /// S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
  late final pulumi.Output<List<BucketIntelligentTieringConfigurationTiering>> tierings;

  /// Creates a new [BucketIntelligentTieringConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketIntelligentTieringConfiguration]. {@macro pulumi_s3_bucket_intelligent_tiering_configuration_bucket_intelligent_tiering_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketIntelligentTieringConfiguration(
    String name, {
    BucketIntelligentTieringConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketIntelligentTieringConfiguration:BucketIntelligentTieringConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.filter = registerOutput<BucketIntelligentTieringConfigurationFilter?>('filter');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String?>('status');
    this.tierings = registerOutput<List<BucketIntelligentTieringConfigurationTiering>>('tierings');
  }
}
