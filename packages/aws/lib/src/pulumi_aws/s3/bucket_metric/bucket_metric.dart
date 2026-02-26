import 'package:pulumi/pulumi.dart';
import '../bucket_metric_filter/bucket_metric_filter.dart';
import 'bucket_metric_args.dart';

/// Provides a S3 bucket [metrics configuration](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html) resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add metrics configuration for entire S3 bucket
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_entire_bucket = new aws.s3.BucketMetric("example-entire-bucket", {
/// bucket: example.id,
/// name: "EntireBucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_entire_bucket = aws.s3.BucketMetric("example-entire-bucket",
/// bucket=example.id,
/// name="EntireBucket")
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
/// BucketName = "example",
/// });
///
/// var example_entire_bucket = new Aws.S3.BucketMetric("example-entire-bucket", new()
/// {
/// Bucket = example.Id,
/// Name = "EntireBucket",
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
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketMetric(ctx, "example-entire-bucket", &s3.BucketMetricArgs{
/// Bucket: example.ID(),
/// Name:   pulumi.String("EntireBucket"),
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
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
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
/// .bucket("example")
/// .build());
///
/// var example_entire_bucket = new BucketMetric("example-entire-bucket", BucketMetricArgs.builder()
/// .bucket(example.id())
/// .name("EntireBucket")
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
/// bucket: example
/// example-entire-bucket:
/// type: aws:s3:BucketMetric
/// properties:
/// bucket: ${example.id}
/// name: EntireBucket
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Add metrics configuration with S3 object filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_filtered = new aws.s3.BucketMetric("example-filtered", {
/// bucket: example.id,
/// name: "ImportantBlueDocuments",
/// filter: {
/// prefix: "documents/",
/// tags: {
/// priority: "high",
/// "class": "blue",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_filtered = aws.s3.BucketMetric("example-filtered",
/// bucket=example.id,
/// name="ImportantBlueDocuments",
/// filter={
/// "prefix": "documents/",
/// "tags": {
/// "priority": "high",
/// "class": "blue",
/// },
/// })
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
/// BucketName = "example",
/// });
///
/// var example_filtered = new Aws.S3.BucketMetric("example-filtered", new()
/// {
/// Bucket = example.Id,
/// Name = "ImportantBlueDocuments",
/// Filter = new Aws.S3.Inputs.BucketMetricFilterArgs
/// {
/// Prefix = "documents/",
/// Tags =
/// {
/// { "priority", "high" },
/// { "class", "blue" },
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
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketMetric(ctx, "example-filtered", &s3.BucketMetricArgs{
/// Bucket: example.ID(),
/// Name:   pulumi.String("ImportantBlueDocuments"),
/// Filter: &s3.BucketMetricFilterArgs{
/// Prefix: pulumi.String("documents/"),
/// Tags: pulumi.StringMap{
/// "priority": pulumi.String("high"),
/// "class":    pulumi.String("blue"),
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
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetricFilterArgs;
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
/// .bucket("example")
/// .build());
///
/// var example_filtered = new BucketMetric("example-filtered", BucketMetricArgs.builder()
/// .bucket(example.id())
/// .name("ImportantBlueDocuments")
/// .filter(BucketMetricFilterArgs.builder()
/// .prefix("documents/")
/// .tags(Map.ofEntries(
/// Map.entry("priority", "high"),
/// Map.entry("class", "blue")
/// ))
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
/// bucket: example
/// example-filtered:
/// type: aws:s3:BucketMetric
/// properties:
/// bucket: ${example.id}
/// name: ImportantBlueDocuments
/// filter:
/// prefix: documents/
/// tags:
/// priority: high
/// class: blue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Add metrics configuration with S3 object filter for S3 Access Point
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const example_access_point = new aws.s3.AccessPoint("example-access-point", {
/// bucket: example.id,
/// name: "example-access-point",
/// });
/// const example_filtered = new aws.s3.BucketMetric("example-filtered", {
/// bucket: example.id,
/// name: "ImportantBlueDocuments",
/// filter: {
/// accessPoint: example_access_point.arn,
/// tags: {
/// priority: "high",
/// "class": "blue",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_access_point = aws.s3.AccessPoint("example-access-point",
/// bucket=example.id,
/// name="example-access-point")
/// example_filtered = aws.s3.BucketMetric("example-filtered",
/// bucket=example.id,
/// name="ImportantBlueDocuments",
/// filter={
/// "access_point": example_access_point.arn,
/// "tags": {
/// "priority": "high",
/// "class": "blue",
/// },
/// })
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
/// BucketName = "example",
/// });
///
/// var example_access_point = new Aws.S3.AccessPoint("example-access-point", new()
/// {
/// Bucket = example.Id,
/// Name = "example-access-point",
/// });
///
/// var example_filtered = new Aws.S3.BucketMetric("example-filtered", new()
/// {
/// Bucket = example.Id,
/// Name = "ImportantBlueDocuments",
/// Filter = new Aws.S3.Inputs.BucketMetricFilterArgs
/// {
/// AccessPoint = example_access_point.Arn,
/// Tags =
/// {
/// { "priority", "high" },
/// { "class", "blue" },
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
/// Bucket: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example_access_point, err := s3.NewAccessPoint(ctx, "example-access-point", &s3.AccessPointArgs{
/// Bucket: example.ID(),
/// Name:   pulumi.String("example-access-point"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketMetric(ctx, "example-filtered", &s3.BucketMetricArgs{
/// Bucket: example.ID(),
/// Name:   pulumi.String("ImportantBlueDocuments"),
/// Filter: &s3.BucketMetricFilterArgs{
/// AccessPoint: example_access_point.Arn,
/// Tags: pulumi.StringMap{
/// "priority": pulumi.String("high"),
/// "class":    pulumi.String("blue"),
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
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3.BucketMetric;
/// import com.pulumi.aws.s3.BucketMetricArgs;
/// import com.pulumi.aws.s3.inputs.BucketMetricFilterArgs;
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
/// .bucket("example")
/// .build());
///
/// var example_access_point = new AccessPoint("example-access-point", AccessPointArgs.builder()
/// .bucket(example.id())
/// .name("example-access-point")
/// .build());
///
/// var example_filtered = new BucketMetric("example-filtered", BucketMetricArgs.builder()
/// .bucket(example.id())
/// .name("ImportantBlueDocuments")
/// .filter(BucketMetricFilterArgs.builder()
/// .accessPoint(example_access_point.arn())
/// .tags(Map.ofEntries(
/// Map.entry("priority", "high"),
/// Map.entry("class", "blue")
/// ))
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
/// bucket: example
/// example-access-point:
/// type: aws:s3:AccessPoint
/// properties:
/// bucket: ${example.id}
/// name: example-access-point
/// example-filtered:
/// type: aws:s3:BucketMetric
/// properties:
/// bucket: ${example.id}
/// name: ImportantBlueDocuments
/// filter:
/// accessPoint: ${["example-access-point"].arn}
/// tags:
/// priority: high
/// class: blue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket metric configurations using `bucket:metric`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketMetric:BucketMetric my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class BucketMetric extends CustomResource {
  /// Name of the bucket to put metric configuration.
  late final Output<String> bucket;

  /// [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  late final Output<BucketMetricFilter?> filter;

  /// Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  BucketMetric(
    String name, {
    BucketMetricArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketMetric:BucketMetric',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = Output.createUnknown<String>();
    this.filter = Output.createUnknown<BucketMetricFilter?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
