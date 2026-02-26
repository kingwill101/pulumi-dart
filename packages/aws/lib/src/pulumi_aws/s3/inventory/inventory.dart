import 'package:pulumi/pulumi.dart';
import '../inventory_destination/inventory_destination.dart';
import '../inventory_filter/inventory_filter.dart';
import '../inventory_schedule/inventory_schedule.dart';
import 'inventory_args.dart';

/// Provides a S3 bucket [inventory configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html) resource.
///
/// > This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add inventory configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.Bucket("test", {bucket: "my-tf-test-bucket"});
/// const inventory = new aws.s3.Bucket("inventory", {bucket: "my-tf-inventory-bucket"});
/// const testInventory = new aws.s3.Inventory("test", {
/// bucket: test.id,
/// name: "EntireBucketDaily",
/// includedObjectVersions: "All",
/// schedule: {
/// frequency: "Daily",
/// },
/// destination: {
/// bucket: {
/// format: "ORC",
/// bucketArn: inventory.arn,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.Bucket("test", bucket="my-tf-test-bucket")
/// inventory = aws.s3.Bucket("inventory", bucket="my-tf-inventory-bucket")
/// test_inventory = aws.s3.Inventory("test",
/// bucket=test.id,
/// name="EntireBucketDaily",
/// included_object_versions="All",
/// schedule={
/// "frequency": "Daily",
/// },
/// destination={
/// "bucket": {
/// "format": "ORC",
/// "bucket_arn": inventory.arn,
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
/// var test = new Aws.S3.Bucket("test", new()
/// {
/// BucketName = "my-tf-test-bucket",
/// });
///
/// var inventory = new Aws.S3.Bucket("inventory", new()
/// {
/// BucketName = "my-tf-inventory-bucket",
/// });
///
/// var testInventory = new Aws.S3.Inventory("test", new()
/// {
/// Bucket = test.Id,
/// Name = "EntireBucketDaily",
/// IncludedObjectVersions = "All",
/// Schedule = new Aws.S3.Inputs.InventoryScheduleArgs
/// {
/// Frequency = "Daily",
/// },
/// Destination = new Aws.S3.Inputs.InventoryDestinationArgs
/// {
/// Bucket = new Aws.S3.Inputs.InventoryDestinationBucketArgs
/// {
/// Format = "ORC",
/// BucketArn = inventory.Arn,
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
/// test, err := s3.NewBucket(ctx, "test", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// inventory, err := s3.NewBucket(ctx, "inventory", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-inventory-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewInventory(ctx, "test", &s3.InventoryArgs{
/// Bucket:                 test.ID(),
/// Name:                   pulumi.String("EntireBucketDaily"),
/// IncludedObjectVersions: pulumi.String("All"),
/// Schedule: &s3.InventoryScheduleArgs{
/// Frequency: pulumi.String("Daily"),
/// },
/// Destination: &s3.InventoryDestinationArgs{
/// Bucket: &s3.InventoryDestinationBucketArgs{
/// Format:    pulumi.String("ORC"),
/// BucketArn: inventory.Arn,
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
/// import com.pulumi.aws.s3.Inventory;
/// import com.pulumi.aws.s3.InventoryArgs;
/// import com.pulumi.aws.s3.inputs.InventoryScheduleArgs;
/// import com.pulumi.aws.s3.inputs.InventoryDestinationArgs;
/// import com.pulumi.aws.s3.inputs.InventoryDestinationBucketArgs;
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
/// var test = new Bucket("test", BucketArgs.builder()
/// .bucket("my-tf-test-bucket")
/// .build());
///
/// var inventory = new Bucket("inventory", BucketArgs.builder()
/// .bucket("my-tf-inventory-bucket")
/// .build());
///
/// var testInventory = new Inventory("testInventory", InventoryArgs.builder()
/// .bucket(test.id())
/// .name("EntireBucketDaily")
/// .includedObjectVersions("All")
/// .schedule(InventoryScheduleArgs.builder()
/// .frequency("Daily")
/// .build())
/// .destination(InventoryDestinationArgs.builder()
/// .bucket(InventoryDestinationBucketArgs.builder()
/// .format("ORC")
/// .bucketArn(inventory.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:s3:Bucket
/// properties:
/// bucket: my-tf-test-bucket
/// inventory:
/// type: aws:s3:Bucket
/// properties:
/// bucket: my-tf-inventory-bucket
/// testInventory:
/// type: aws:s3:Inventory
/// name: test
/// properties:
/// bucket: ${test.id}
/// name: EntireBucketDaily
/// includedObjectVersions: All
/// schedule:
/// frequency: Daily
/// destination:
/// bucket:
/// format: ORC
/// bucketArn: ${inventory.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Add inventory configuration with S3 object prefix
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.Bucket("test", {bucket: "my-tf-test-bucket"});
/// const inventory = new aws.s3.Bucket("inventory", {bucket: "my-tf-inventory-bucket"});
/// const test_prefix = new aws.s3.Inventory("test-prefix", {
/// bucket: test.id,
/// name: "DocumentsWeekly",
/// includedObjectVersions: "All",
/// schedule: {
/// frequency: "Daily",
/// },
/// filter: {
/// prefix: "documents/",
/// },
/// destination: {
/// bucket: {
/// format: "ORC",
/// bucketArn: inventory.arn,
/// prefix: "inventory",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.Bucket("test", bucket="my-tf-test-bucket")
/// inventory = aws.s3.Bucket("inventory", bucket="my-tf-inventory-bucket")
/// test_prefix = aws.s3.Inventory("test-prefix",
/// bucket=test.id,
/// name="DocumentsWeekly",
/// included_object_versions="All",
/// schedule={
/// "frequency": "Daily",
/// },
/// filter={
/// "prefix": "documents/",
/// },
/// destination={
/// "bucket": {
/// "format": "ORC",
/// "bucket_arn": inventory.arn,
/// "prefix": "inventory",
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
/// var test = new Aws.S3.Bucket("test", new()
/// {
/// BucketName = "my-tf-test-bucket",
/// });
///
/// var inventory = new Aws.S3.Bucket("inventory", new()
/// {
/// BucketName = "my-tf-inventory-bucket",
/// });
///
/// var test_prefix = new Aws.S3.Inventory("test-prefix", new()
/// {
/// Bucket = test.Id,
/// Name = "DocumentsWeekly",
/// IncludedObjectVersions = "All",
/// Schedule = new Aws.S3.Inputs.InventoryScheduleArgs
/// {
/// Frequency = "Daily",
/// },
/// Filter = new Aws.S3.Inputs.InventoryFilterArgs
/// {
/// Prefix = "documents/",
/// },
/// Destination = new Aws.S3.Inputs.InventoryDestinationArgs
/// {
/// Bucket = new Aws.S3.Inputs.InventoryDestinationBucketArgs
/// {
/// Format = "ORC",
/// BucketArn = inventory.Arn,
/// Prefix = "inventory",
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
/// test, err := s3.NewBucket(ctx, "test", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// inventory, err := s3.NewBucket(ctx, "inventory", &s3.BucketArgs{
/// Bucket: pulumi.String("my-tf-inventory-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewInventory(ctx, "test-prefix", &s3.InventoryArgs{
/// Bucket:                 test.ID(),
/// Name:                   pulumi.String("DocumentsWeekly"),
/// IncludedObjectVersions: pulumi.String("All"),
/// Schedule: &s3.InventoryScheduleArgs{
/// Frequency: pulumi.String("Daily"),
/// },
/// Filter: &s3.InventoryFilterArgs{
/// Prefix: pulumi.String("documents/"),
/// },
/// Destination: &s3.InventoryDestinationArgs{
/// Bucket: &s3.InventoryDestinationBucketArgs{
/// Format:    pulumi.String("ORC"),
/// BucketArn: inventory.Arn,
/// Prefix:    pulumi.String("inventory"),
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
/// import com.pulumi.aws.s3.Inventory;
/// import com.pulumi.aws.s3.InventoryArgs;
/// import com.pulumi.aws.s3.inputs.InventoryScheduleArgs;
/// import com.pulumi.aws.s3.inputs.InventoryFilterArgs;
/// import com.pulumi.aws.s3.inputs.InventoryDestinationArgs;
/// import com.pulumi.aws.s3.inputs.InventoryDestinationBucketArgs;
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
/// var test = new Bucket("test", BucketArgs.builder()
/// .bucket("my-tf-test-bucket")
/// .build());
///
/// var inventory = new Bucket("inventory", BucketArgs.builder()
/// .bucket("my-tf-inventory-bucket")
/// .build());
///
/// var test_prefix = new Inventory("test-prefix", InventoryArgs.builder()
/// .bucket(test.id())
/// .name("DocumentsWeekly")
/// .includedObjectVersions("All")
/// .schedule(InventoryScheduleArgs.builder()
/// .frequency("Daily")
/// .build())
/// .filter(InventoryFilterArgs.builder()
/// .prefix("documents/")
/// .build())
/// .destination(InventoryDestinationArgs.builder()
/// .bucket(InventoryDestinationBucketArgs.builder()
/// .format("ORC")
/// .bucketArn(inventory.arn())
/// .prefix("inventory")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:s3:Bucket
/// properties:
/// bucket: my-tf-test-bucket
/// inventory:
/// type: aws:s3:Bucket
/// properties:
/// bucket: my-tf-inventory-bucket
/// test-prefix:
/// type: aws:s3:Inventory
/// properties:
/// bucket: ${test.id}
/// name: DocumentsWeekly
/// includedObjectVersions: All
/// schedule:
/// frequency: Daily
/// filter:
/// prefix: documents/
/// destination:
/// bucket:
/// format: ORC
/// bucketArn: ${inventory.arn}
/// prefix: inventory
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket inventory configurations using `bucket:inventory`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/inventory:Inventory my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class Inventory extends CustomResource {
  /// Name of the source bucket that inventory lists the objects for.
  late final Output<String> bucket;

  /// Contains information about where to publish the inventory results (documented below).
  late final Output<InventoryDestination> destination;

  /// Specifies whether the inventory is enabled or disabled.
  late final Output<bool?> enabled;

  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below).
  late final Output<InventoryFilter?> filter;

  /// Object versions to include in the inventory list. Valid values: `All`, `Current`.
  late final Output<String> includedObjectVersions;

  /// Unique identifier of the inventory configuration for the bucket.
  late final Output<String> name;

  /// List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  late final Output<List<String>?> optionalFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the schedule for generating inventory results (documented below).
  late final Output<InventorySchedule> schedule;

  Inventory(
    String name, {
    InventoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3/inventory:Inventory',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.destination = registerOutput<InventoryDestination>('destination');
    this.enabled = registerOutput<bool?>('enabled');
    this.filter = registerOutput<InventoryFilter?>('filter');
    this.includedObjectVersions =
        registerOutput<String>('includedObjectVersions');
    this.name = registerOutput<String>('name');
    this.optionalFields = registerOutput<List<String>?>('optionalFields');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<InventorySchedule>('schedule');
  }
}
