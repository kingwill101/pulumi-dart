import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metric_args.dart';
import 'bucket_metric_filter.dart';
import 'bucket_metric_state.dart';

/// Provides a S3 bucket [metrics configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html) resource.
///
/// ## Example Usage
///
/// ### Add metrics configuration for entire S3 bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_entire_bucket = new aws.s3.BucketMetric("example-entire-bucket", {
///     bucket: example.id,
///     name: "EntireBucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_entire_bucket = aws.s3.BucketMetric("example-entire-bucket",
///     bucket=example.id,
///     name="EntireBucket")
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
///     var example_entire_bucket = new Aws.S3.BucketMetric("example-entire-bucket", new()
///     {
///         Bucket = example.Id,
///         Name = "EntireBucket",
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
/// 		_, err = s3.NewBucketMetric(ctx, "example-entire-bucket", &s3.BucketMetricArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("EntireBucket"),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketmetric" "example-entire-bucket" {
///   bucket = aws_s3_bucket.example.id
///   name   = "EntireBucket"
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
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
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
///         var example_entire_bucket = new BucketMetric("example-entire-bucket", BucketMetricArgs.builder()
///             .bucket(example.id())
///             .name("EntireBucket")
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
///       bucket: example
///   example-entire-bucket:
///     type: aws:s3:BucketMetric
///     properties:
///       bucket: ${example.id}
///       name: EntireBucket
/// ```
///
///
/// ### Add metrics configuration with S3 object filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_filtered = new aws.s3.BucketMetric("example-filtered", {
///     filter: {
///         prefix: "documents/",
///         tags: {
///             priority: "high",
///             "class": "blue",
///         },
///     },
///     bucket: example.id,
///     name: "ImportantBlueDocuments",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_filtered = aws.s3.BucketMetric("example-filtered",
///     filter={
///         "prefix": "documents/",
///         "tags": {
///             "priority": "high",
///             "class": "blue",
///         },
///     },
///     bucket=example.id,
///     name="ImportantBlueDocuments")
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
///     var example_filtered = new Aws.S3.BucketMetric("example-filtered", new()
///     {
///         Filter = new Aws.S3.Inputs.BucketMetricFilterArgs
///         {
///             Prefix = "documents/",
///             Tags =
///             {
///                 { "priority", "high" },
///                 { "class", "blue" },
///             },
///         },
///         Bucket = example.Id,
///         Name = "ImportantBlueDocuments",
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
/// 		_, err = s3.NewBucketMetric(ctx, "example-filtered", &s3.BucketMetricArgs{
/// 			Filter: &s3.BucketMetricFilterArgs{
/// 				Prefix: pulumi.String("documents/"),
/// 				Tags: pulumi.StringMap{
/// 					"priority": pulumi.String("high"),
/// 					"class":    pulumi.String("blue"),
/// 				},
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("ImportantBlueDocuments"),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketmetric" "example-filtered" {
///   filter = {
///     prefix = "documents/"
///     tags = {
///       "priority" = "high"
///       "class"    = "blue"
///     }
///   }
///   bucket = aws_s3_bucket.example.id
///   name   = "ImportantBlueDocuments"
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
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetricFilterArgs;
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
///         var example_filtered = new BucketMetric("example-filtered", BucketMetricArgs.builder()
///             .filter(BucketMetricFilterArgs.builder()
///                 .prefix("documents/")
///                 .tags(Map.ofEntries(
///                     Map.entry("priority", "high"),
///                     Map.entry("class", "blue")
///                 ))
///                 .build())
///             .bucket(example.id())
///             .name("ImportantBlueDocuments")
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
///       bucket: example
///   example-filtered:
///     type: aws:s3:BucketMetric
///     properties:
///       filter:
///         prefix: documents/
///         tags:
///           priority: high
///           class: blue
///       bucket: ${example.id}
///       name: ImportantBlueDocuments
/// ```
///
///
/// ### Add metrics configuration with S3 object filter for S3 Access Point
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_access_point = new aws.s3.AccessPoint("example-access-point", {
///     bucket: example.id,
///     name: "example-access-point",
/// });
/// const example_filtered = new aws.s3.BucketMetric("example-filtered", {
///     filter: {
///         accessPoint: example_access_point.arn,
///         tags: {
///             priority: "high",
///             "class": "blue",
///         },
///     },
///     bucket: example.id,
///     name: "ImportantBlueDocuments",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_access_point = aws.s3.AccessPoint("example-access-point",
///     bucket=example.id,
///     name="example-access-point")
/// example_filtered = aws.s3.BucketMetric("example-filtered",
///     filter={
///         "access_point": example_access_point.arn,
///         "tags": {
///             "priority": "high",
///             "class": "blue",
///         },
///     },
///     bucket=example.id,
///     name="ImportantBlueDocuments")
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
///     var example_access_point = new Aws.S3.AccessPoint("example-access-point", new()
///     {
///         Bucket = example.Id,
///         Name = "example-access-point",
///     });
///
///     var example_filtered = new Aws.S3.BucketMetric("example-filtered", new()
///     {
///         Filter = new Aws.S3.Inputs.BucketMetricFilterArgs
///         {
///             AccessPoint = example_access_point.Arn,
///             Tags =
///             {
///                 { "priority", "high" },
///                 { "class", "blue" },
///             },
///         },
///         Bucket = example.Id,
///         Name = "ImportantBlueDocuments",
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
/// 		example_access_point, err := s3.NewAccessPoint(ctx, "example-access-point", &s3.AccessPointArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("example-access-point"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketMetric(ctx, "example-filtered", &s3.BucketMetricArgs{
/// 			Filter: &s3.BucketMetricFilterArgs{
/// 				AccessPoint: example_access_point.Arn,
/// 				Tags: pulumi.StringMap{
/// 					"priority": pulumi.String("high"),
/// 					"class":    pulumi.String("blue"),
/// 				},
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("ImportantBlueDocuments"),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_accesspoint" "example-access-point" {
///   bucket = aws_s3_bucket.example.id
///   name   = "example-access-point"
/// }
/// resource "aws_s3_bucketmetric" "example-filtered" {
///   filter = {
///     access_point = aws_s3_accesspoint.example-access-point.arn
///     tags = {
///       "priority" = "high"
///       "class"    = "blue"
///     }
///   }
///   bucket = aws_s3_bucket.example.id
///   name   = "ImportantBlueDocuments"
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
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetricFilterArgs;
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
///         var example_access_point = new AccessPoint("example-access-point", AccessPointArgs.builder()
///             .bucket(example.id())
///             .name("example-access-point")
///             .build());
///
///         var example_filtered = new BucketMetric("example-filtered", BucketMetricArgs.builder()
///             .filter(BucketMetricFilterArgs.builder()
///                 .accessPoint(example_access_point.arn())
///                 .tags(Map.ofEntries(
///                     Map.entry("priority", "high"),
///                     Map.entry("class", "blue")
///                 ))
///                 .build())
///             .bucket(example.id())
///             .name("ImportantBlueDocuments")
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
///       bucket: example
///   example-access-point:
///     type: aws:s3:AccessPoint
///     properties:
///       bucket: ${example.id}
///       name: example-access-point
///   example-filtered:
///     type: aws:s3:BucketMetric
///     properties:
///       filter:
///         accessPoint: ${["example-access-point"].arn}
///         tags:
///           priority: high
///           class: blue
///       bucket: ${example.id}
///       name: ImportantBlueDocuments
/// ```
///
///
/// ### Add metrics configuration for S3 directory bucket
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const example = new aws.s3.DirectoryBucket("example", {
///     location: {
///         name: available.then(available => available.zoneIds?.[0]),
///     },
///     bucket: "example--zoneId--x-s3",
/// });
/// const example_access_point = new aws.s3.AccessPoint("example-access-point", {
///     bucket: example.id,
///     name: "example--zoneId--xa-s3",
/// });
/// const example_bucket_metric = new aws.s3.BucketMetric("example-bucket-metric", {
///     filter: {
///         accessPoint: example_access_point.arn,
///         prefix: "documents/",
///     },
///     bucket: example.id,
///     name: "ExampleBucketMetricForDirectoryBuckets",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.s3.DirectoryBucket("example",
///     location={
///         "name": available.zone_ids[0],
///     },
///     bucket="example--zoneId--x-s3")
/// example_access_point = aws.s3.AccessPoint("example-access-point",
///     bucket=example.id,
///     name="example--zoneId--xa-s3")
/// example_bucket_metric = aws.s3.BucketMetric("example-bucket-metric",
///     filter={
///         "access_point": example_access_point.arn,
///         "prefix": "documents/",
///     },
///     bucket=example.id,
///     name="ExampleBucketMetricForDirectoryBuckets")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var example = new Aws.S3.DirectoryBucket("example", new()
///     {
///         Location = new Aws.S3.Inputs.DirectoryBucketLocationArgs
///         {
///             Name = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
///         },
///         Bucket = "example--zoneId--x-s3",
///     });
///
///     var example_access_point = new Aws.S3.AccessPoint("example-access-point", new()
///     {
///         Bucket = example.Id,
///         Name = "example--zoneId--xa-s3",
///     });
///
///     var example_bucket_metric = new Aws.S3.BucketMetric("example-bucket-metric", new()
///     {
///         Filter = new Aws.S3.Inputs.BucketMetricFilterArgs
///         {
///             AccessPoint = example_access_point.Arn,
///             Prefix = "documents/",
///         },
///         Bucket = example.Id,
///         Name = "ExampleBucketMetricForDirectoryBuckets",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := s3.NewDirectoryBucket(ctx, "example", &s3.DirectoryBucketArgs{
/// 			Location: &s3.DirectoryBucketLocationArgs{
/// 				Name: pulumi.String(available.ZoneIds[0]),
/// 			},
/// 			Bucket: pulumi.String("example--zoneId--x-s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_access_point, err := s3.NewAccessPoint(ctx, "example-access-point", &s3.AccessPointArgs{
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("example--zoneId--xa-s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketMetric(ctx, "example-bucket-metric", &s3.BucketMetricArgs{
/// 			Filter: &s3.BucketMetricFilterArgs{
/// 				AccessPoint: example_access_point.Arn,
/// 				Prefix:      pulumi.String("documents/"),
/// 			},
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("ExampleBucketMetricForDirectoryBuckets"),
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
/// data "aws_getavailabilityzones" "available" {
///   state = "available"
/// }
///
/// resource "aws_s3_directorybucket" "example" {
///   location = {
///     name = data.aws_getavailabilityzones.available.zone_ids[0]
///   }
///   bucket = "example--zoneId--x-s3"
/// }
/// resource "aws_s3_accesspoint" "example-access-point" {
///   bucket = aws_s3_directorybucket.example.id
///   name   = "example--zoneId--xa-s3"
/// }
/// resource "aws_s3_bucketmetric" "example-bucket-metric" {
///   filter = {
///     access_point = aws_s3_accesspoint.example-access-point.arn
///     prefix       = "documents/"
///   }
///   bucket = aws_s3_directorybucket.example.id
///   name   = "ExampleBucketMetricForDirectoryBuckets"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.s3.DirectoryBucket;
/// import com.pulumi.aws.s3.DirectoryBucketArgs;
/// import com.pulumi.aws.s3.inputs.DirectoryBucketLocationArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetricFilterArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var example = new DirectoryBucket("example", DirectoryBucketArgs.builder()
///             .location(DirectoryBucketLocationArgs.builder()
///                 .name(available.zoneIds()[0])
///                 .build())
///             .bucket("example--zoneId--x-s3")
///             .build());
///
///         var example_access_point = new AccessPoint("example-access-point", AccessPointArgs.builder()
///             .bucket(example.id())
///             .name("example--zoneId--xa-s3")
///             .build());
///
///         var example_bucket_metric = new BucketMetric("example-bucket-metric", BucketMetricArgs.builder()
///             .filter(BucketMetricFilterArgs.builder()
///                 .accessPoint(example_access_point.arn())
///                 .prefix("documents/")
///                 .build())
///             .bucket(example.id())
///             .name("ExampleBucketMetricForDirectoryBuckets")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:DirectoryBucket
///     properties:
///       location:
///         name: ${available.zoneIds[0]}
///       bucket: example--zoneId--x-s3
///   example-access-point:
///     type: aws:s3:AccessPoint
///     properties:
///       bucket: ${example.id}
///       name: example--zoneId--xa-s3
///   example-bucket-metric:
///     type: aws:s3:BucketMetric
///     properties:
///       filter:
///         accessPoint: ${["example-access-point"].arn}
///         prefix: documents/
///       bucket: ${example.id}
///       name: ExampleBucketMetricForDirectoryBuckets
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket metric configurations using `bucket:metric`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketMetric:BucketMetric my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class BucketMetric extends pulumi.CustomResource {
  /// Name of the bucket to put metric configuration.
  late final pulumi.Output<String> bucket;
  /// [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags. See below.
  late final pulumi.Output<BucketMetricFilter?> filter;
  /// Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketMetric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketMetric]. {@macro pulumi_s3_bucket_metric_bucket_metric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketMetric(
    String name, {
    BucketMetricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetric:BucketMetric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    filter = registerOutput<BucketMetricFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetricFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BucketMetric] resource's state with the given [name] and [id].
  static BucketMetric get(
    String name,
    pulumi.Input<String> id, {
    BucketMetricState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketMetric._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketMetric._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetric:BucketMetric',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    filter = registerOutput<BucketMetricFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetricFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [BucketMetric] resource.
  BucketMetric.reference(String urn)
    : super(
        'aws:s3/bucketMetric:BucketMetric',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    filter = registerOutput<BucketMetricFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketMetricFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
