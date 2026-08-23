import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_configuration_args.dart';
import 'analytics_configuration_filter.dart';
import 'analytics_configuration_state.dart';
import 'analytics_configuration_storage_class_analysis.dart';

/// Provides a S3 bucket [analytics configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html) resource.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add analytics configuration for entire S3 bucket and export results to a second S3 bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const analytics = new aws.s3.Bucket("analytics", {bucket: "analytics-destination"});
/// const example_entire_bucket = new aws.s3.AnalyticsConfiguration("example-entire-bucket", {
///     bucket: example.id,
///     name: "EntireBucket",
///     storageClassAnalysis: {
///         dataExport: {
///             destination: {
///                 s3BucketDestination: {
///                     bucketArn: analytics.arn,
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// analytics = aws.s3.Bucket("analytics", bucket="analytics-destination")
/// example_entire_bucket = aws.s3.AnalyticsConfiguration("example-entire-bucket",
///     bucket=example.id,
///     name="EntireBucket",
///     storage_class_analysis={
///         "data_export": {
///             "destination": {
///                 "s3_bucket_destination": {
///                     "bucket_arn": analytics.arn,
///                 },
///             },
///         },
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var analytics = new Aws.S3.Bucket("analytics", new()
///     {
///         BucketName = "analytics-destination",
///     });
///
///     var example_entire_bucket = new Aws.S3.AnalyticsConfiguration("example-entire-bucket", new()
///     {
///         Bucket = example.Id,
///         Name = "EntireBucket",
///         StorageClassAnalysis = new Aws.S3.Inputs.AnalyticsConfigurationStorageClassAnalysisArgs
///         {
///             DataExport = new Aws.S3.Inputs.AnalyticsConfigurationStorageClassAnalysisDataExportArgs
///             {
///                 Destination = new Aws.S3.Inputs.AnalyticsConfigurationStorageClassAnalysisDataExportDestinationArgs
///                 {
///                     S3BucketDestination = new Aws.S3.Inputs.AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationArgs
///                     {
///                         BucketArn = analytics.Arn,
///                     },
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
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		analytics, err := s3.NewBucket(ctx, "analytics", &s3.BucketArgs{
/// 			Bucket: pulumi.String("analytics-destination"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewAnalyticsConfiguration(ctx, "example-entire-bucket", &s3.AnalyticsConfigurationArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("EntireBucket"),
/// 			StorageClassAnalysis: &s3.AnalyticsConfigurationStorageClassAnalysisArgs{
/// 				DataExport: &s3.AnalyticsConfigurationStorageClassAnalysisDataExportArgs{
/// 					Destination: &s3.AnalyticsConfigurationStorageClassAnalysisDataExportDestinationArgs{
/// 						S3BucketDestination: &s3.AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationArgs{
/// 							BucketArn: analytics.Arn,
/// 						},
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
/// resource "aws_s3_analyticsconfiguration" "example-entire-bucket" {
///   bucket = aws_s3_bucket.example.id
///   name   = "EntireBucket"
///   storage_class_analysis = {
///     data_export = {
///       destination = {
///         s3_bucket_destination = {
///           bucket_arn = aws_s3_bucket.analytics.arn
///         }
///       }
///     }
///   }
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucket" "analytics" {
///   bucket = "analytics-destination"
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
/// import com.pulumi.aws.s3.AnalyticsConfiguration;
/// import com.pulumi.aws.s3.AnalyticsConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.AnalyticsConfigurationStorageClassAnalysisArgs;
/// import com.pulumi.aws.s3.inputs.AnalyticsConfigurationStorageClassAnalysisDataExportArgs;
/// import com.pulumi.aws.s3.inputs.AnalyticsConfigurationStorageClassAnalysisDataExportDestinationArgs;
/// import com.pulumi.aws.s3.inputs.AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var analytics = new Bucket("analytics", BucketArgs.builder()
///             .bucket("analytics-destination")
///             .build());
///
///         var example_entire_bucket = new AnalyticsConfiguration("example-entire-bucket", AnalyticsConfigurationArgs.builder()
///             .bucket(example.id())
///             .name("EntireBucket")
///             .storageClassAnalysis(AnalyticsConfigurationStorageClassAnalysisArgs.builder()
///                 .dataExport(AnalyticsConfigurationStorageClassAnalysisDataExportArgs.builder()
///                     .destination(AnalyticsConfigurationStorageClassAnalysisDataExportDestinationArgs.builder()
///                         .s3BucketDestination(AnalyticsConfigurationStorageClassAnalysisDataExportDestinationS3BucketDestinationArgs.builder()
///                             .bucketArn(analytics.arn())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-entire-bucket:
///     type: aws:s3:AnalyticsConfiguration
///     properties:
///       bucket: ${example.id}
///       name: EntireBucket
///       storageClassAnalysis:
///         dataExport:
///           destination:
///             s3BucketDestination:
///               bucketArn: ${analytics.arn}
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
///   analytics:
///     type: aws:s3:Bucket
///     properties:
///       bucket: analytics-destination
/// ```
///
///
/// ### Add analytics configuration with S3 object filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_filtered = new aws.s3.AnalyticsConfiguration("example-filtered", {
///     bucket: example.id,
///     name: "ImportantBlueDocuments",
///     filter: {
///         prefix: "documents/",
///         tags: {
///             priority: "high",
///             "class": "blue",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_filtered = aws.s3.AnalyticsConfiguration("example-filtered",
///     bucket=example.id,
///     name="ImportantBlueDocuments",
///     filter={
///         "prefix": "documents/",
///         "tags": {
///             "priority": "high",
///             "class": "blue",
///         },
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var example_filtered = new Aws.S3.AnalyticsConfiguration("example-filtered", new()
///     {
///         Bucket = example.Id,
///         Name = "ImportantBlueDocuments",
///         Filter = new Aws.S3.Inputs.AnalyticsConfigurationFilterArgs
///         {
///             Prefix = "documents/",
///             Tags =
///             {
///                 { "priority", "high" },
///                 { "class", "blue" },
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
/// 		_, err = s3.NewAnalyticsConfiguration(ctx, "example-filtered", &s3.AnalyticsConfigurationArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("ImportantBlueDocuments"),
/// 			Filter: &s3.AnalyticsConfigurationFilterArgs{
/// 				Prefix: pulumi.String("documents/"),
/// 				Tags: pulumi.StringMap{
/// 					"priority": pulumi.String("high"),
/// 					"class":    pulumi.String("blue"),
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
/// resource "aws_s3_analyticsconfiguration" "example-filtered" {
///   bucket = aws_s3_bucket.example.id
///   name   = "ImportantBlueDocuments"
///   filter = {
///     prefix = "documents/"
///     tags = {
///       "priority" = "high"
///       "class"    = "blue"
///     }
///   }
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
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
/// import com.pulumi.aws.s3.AnalyticsConfiguration;
/// import com.pulumi.aws.s3.AnalyticsConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.AnalyticsConfigurationFilterArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var example_filtered = new AnalyticsConfiguration("example-filtered", AnalyticsConfigurationArgs.builder()
///             .bucket(example.id())
///             .name("ImportantBlueDocuments")
///             .filter(AnalyticsConfigurationFilterArgs.builder()
///                 .prefix("documents/")
///                 .tags(Map.ofEntries(
///                     Map.entry("priority", "high"),
///                     Map.entry("class", "blue")
///                 ))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-filtered:
///     type: aws:s3:AnalyticsConfiguration
///     properties:
///       bucket: ${example.id}
///       name: ImportantBlueDocuments
///       filter:
///         prefix: documents/
///         tags:
///           priority: high
///           class: blue
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket analytics configurations using `bucket:analytics`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/analyticsConfiguration:AnalyticsConfiguration my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class AnalyticsConfiguration extends pulumi.CustomResource {
  /// Name of the bucket this analytics configuration is associated with.
  late final pulumi.Output<String> bucket;
  /// Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  late final pulumi.Output<AnalyticsConfigurationFilter?> filter;
  /// Unique identifier of the analytics configuration for the bucket.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for the analytics data export (documented below).
  late final pulumi.Output<AnalyticsConfigurationStorageClassAnalysis?> storageClassAnalysis;

  /// Creates a new [AnalyticsConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsConfiguration]. {@macro pulumi_s3_analytics_configuration_analytics_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsConfiguration(
    String name, {
    AnalyticsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/analyticsConfiguration:AnalyticsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    filter = registerOutput<AnalyticsConfigurationFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsConfigurationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    storageClassAnalysis = registerOutput<AnalyticsConfigurationStorageClassAnalysis?>('storageClassAnalysis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsConfigurationStorageClassAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AnalyticsConfiguration] resource's state with the given [name] and [id].
  static AnalyticsConfiguration get(
    String name,
    pulumi.Input<String> id, {
    AnalyticsConfigurationState? state,
  }) {
    return AnalyticsConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnalyticsConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/analyticsConfiguration:AnalyticsConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    filter = registerOutput<AnalyticsConfigurationFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsConfigurationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    storageClassAnalysis = registerOutput<AnalyticsConfigurationStorageClassAnalysis?>('storageClassAnalysis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsConfigurationStorageClassAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
