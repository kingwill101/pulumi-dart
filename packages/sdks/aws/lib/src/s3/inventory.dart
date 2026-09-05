import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_args.dart';
import 'inventory_destination.dart';
import 'inventory_filter.dart';
import 'inventory_schedule.dart';
import 'inventory_state.dart';

/// Provides a S3 bucket [inventory configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-inventory.html) resource.
///
/// ## Example Usage
///
/// ### Add inventory configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.Bucket("test", {bucket: "my-tf-test-bucket"});
/// const inventory = new aws.s3.Bucket("inventory", {bucket: "my-tf-inventory-bucket"});
/// const testInventory = new aws.s3.Inventory("test", {
///     schedule: {
///         frequency: "Daily",
///     },
///     destination: {
///         bucket: {
///             format: "ORC",
///             bucketArn: inventory.arn,
///         },
///     },
///     bucket: test.id,
///     name: "EntireBucketDaily",
///     includedObjectVersions: "All",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.Bucket("test", bucket="my-tf-test-bucket")
/// inventory = aws.s3.Bucket("inventory", bucket="my-tf-inventory-bucket")
/// test_inventory = aws.s3.Inventory("test",
///     schedule={
///         "frequency": "Daily",
///     },
///     destination={
///         "bucket": {
///             "format": "ORC",
///             "bucket_arn": inventory.arn,
///         },
///     },
///     bucket=test.id,
///     name="EntireBucketDaily",
///     included_object_versions="All")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.S3.Bucket("test", new()
///     {
///         BucketName = "my-tf-test-bucket",
///     });
///
///     var inventory = new Aws.S3.Bucket("inventory", new()
///     {
///         BucketName = "my-tf-inventory-bucket",
///     });
///
///     var testInventory = new Aws.S3.Inventory("test", new()
///     {
///         Schedule = new Aws.S3.Inputs.InventoryScheduleArgs
///         {
///             Frequency = "Daily",
///         },
///         Destination = new Aws.S3.Inputs.InventoryDestinationArgs
///         {
///             Bucket = new Aws.S3.Inputs.InventoryDestinationBucketArgs
///             {
///                 Format = "ORC",
///                 BucketArn = inventory.Arn,
///             },
///         },
///         Bucket = test.Id,
///         Name = "EntireBucketDaily",
///         IncludedObjectVersions = "All",
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
/// 		test, err := s3.NewBucket(ctx, "test", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		inventory, err := s3.NewBucket(ctx, "inventory", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-inventory-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewInventory(ctx, "test", &s3.InventoryArgs{
/// 			Schedule: &s3.InventoryScheduleArgs{
/// 				Frequency: pulumi.String("Daily"),
/// 			},
/// 			Destination: &s3.InventoryDestinationArgs{
/// 				Bucket: &s3.InventoryDestinationBucketArgs{
/// 					Format:    pulumi.String("ORC"),
/// 					BucketArn: inventory.Arn,
/// 				},
/// 			},
/// 			Bucket:                 test.ID().ToIDOutput().ToStringOutput(),
/// 			Name:                   pulumi.String("EntireBucketDaily"),
/// 			IncludedObjectVersions: pulumi.String("All"),
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
/// resource "aws_s3_bucket" "test" {
///   bucket = "my-tf-test-bucket"
/// }
/// resource "aws_s3_bucket" "inventory" {
///   bucket = "my-tf-inventory-bucket"
/// }
/// resource "aws_s3_inventory" "test" {
///   schedule = {
///     frequency = "Daily"
///   }
///   destination = {
///     bucket = {
///       format     = "ORC"
///       bucket_arn = aws_s3_bucket.inventory.arn
///     }
///   }
///   bucket                   = aws_s3_bucket.test.id
///   name                     = "EntireBucketDaily"
///   included_object_versions = "All"
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
///         var test = new Bucket("test", BucketArgs.builder()
///             .bucket("my-tf-test-bucket")
///             .build());
///
///         var inventory = new Bucket("inventory", BucketArgs.builder()
///             .bucket("my-tf-inventory-bucket")
///             .build());
///
///         var testInventory = new Inventory("testInventory", InventoryArgs.builder()
///             .schedule(InventoryScheduleArgs.builder()
///                 .frequency("Daily")
///                 .build())
///             .destination(InventoryDestinationArgs.builder()
///                 .bucket(InventoryDestinationBucketArgs.builder()
///                     .format("ORC")
///                     .bucketArn(inventory.arn())
///                     .build())
///                 .build())
///             .bucket(test.id())
///             .name("EntireBucketDaily")
///             .includedObjectVersions("All")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-test-bucket
///   inventory:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-inventory-bucket
///   testInventory:
///     type: aws:s3:Inventory
///     name: test
///     properties:
///       schedule:
///         frequency: Daily
///       destination:
///         bucket:
///           format: ORC
///           bucketArn: ${inventory.arn}
///       bucket: ${test.id}
///       name: EntireBucketDaily
///       includedObjectVersions: All
/// ```
///
///
/// ### Add inventory configuration with S3 object prefix
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.Bucket("test", {bucket: "my-tf-test-bucket"});
/// const inventory = new aws.s3.Bucket("inventory", {bucket: "my-tf-inventory-bucket"});
/// const test_prefix = new aws.s3.Inventory("test-prefix", {
///     schedule: {
///         frequency: "Daily",
///     },
///     filter: {
///         prefix: "documents/",
///     },
///     destination: {
///         bucket: {
///             format: "ORC",
///             bucketArn: inventory.arn,
///             prefix: "inventory",
///         },
///     },
///     bucket: test.id,
///     name: "DocumentsWeekly",
///     includedObjectVersions: "All",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.Bucket("test", bucket="my-tf-test-bucket")
/// inventory = aws.s3.Bucket("inventory", bucket="my-tf-inventory-bucket")
/// test_prefix = aws.s3.Inventory("test-prefix",
///     schedule={
///         "frequency": "Daily",
///     },
///     filter={
///         "prefix": "documents/",
///     },
///     destination={
///         "bucket": {
///             "format": "ORC",
///             "bucket_arn": inventory.arn,
///             "prefix": "inventory",
///         },
///     },
///     bucket=test.id,
///     name="DocumentsWeekly",
///     included_object_versions="All")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.S3.Bucket("test", new()
///     {
///         BucketName = "my-tf-test-bucket",
///     });
///
///     var inventory = new Aws.S3.Bucket("inventory", new()
///     {
///         BucketName = "my-tf-inventory-bucket",
///     });
///
///     var test_prefix = new Aws.S3.Inventory("test-prefix", new()
///     {
///         Schedule = new Aws.S3.Inputs.InventoryScheduleArgs
///         {
///             Frequency = "Daily",
///         },
///         Filter = new Aws.S3.Inputs.InventoryFilterArgs
///         {
///             Prefix = "documents/",
///         },
///         Destination = new Aws.S3.Inputs.InventoryDestinationArgs
///         {
///             Bucket = new Aws.S3.Inputs.InventoryDestinationBucketArgs
///             {
///                 Format = "ORC",
///                 BucketArn = inventory.Arn,
///                 Prefix = "inventory",
///             },
///         },
///         Bucket = test.Id,
///         Name = "DocumentsWeekly",
///         IncludedObjectVersions = "All",
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
/// 		test, err := s3.NewBucket(ctx, "test", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-test-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		inventory, err := s3.NewBucket(ctx, "inventory", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-tf-inventory-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewInventory(ctx, "test-prefix", &s3.InventoryArgs{
/// 			Schedule: &s3.InventoryScheduleArgs{
/// 				Frequency: pulumi.String("Daily"),
/// 			},
/// 			Filter: &s3.InventoryFilterArgs{
/// 				Prefix: pulumi.String("documents/"),
/// 			},
/// 			Destination: &s3.InventoryDestinationArgs{
/// 				Bucket: &s3.InventoryDestinationBucketArgs{
/// 					Format:    pulumi.String("ORC"),
/// 					BucketArn: inventory.Arn,
/// 					Prefix:    pulumi.String("inventory"),
/// 				},
/// 			},
/// 			Bucket:                 test.ID().ToIDOutput().ToStringOutput(),
/// 			Name:                   pulumi.String("DocumentsWeekly"),
/// 			IncludedObjectVersions: pulumi.String("All"),
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
/// resource "aws_s3_bucket" "test" {
///   bucket = "my-tf-test-bucket"
/// }
/// resource "aws_s3_bucket" "inventory" {
///   bucket = "my-tf-inventory-bucket"
/// }
/// resource "aws_s3_inventory" "test-prefix" {
///   schedule = {
///     frequency = "Daily"
///   }
///   filter = {
///     prefix = "documents/"
///   }
///   destination = {
///     bucket = {
///       format     = "ORC"
///       bucket_arn = aws_s3_bucket.inventory.arn
///       prefix     = "inventory"
///     }
///   }
///   bucket                   = aws_s3_bucket.test.id
///   name                     = "DocumentsWeekly"
///   included_object_versions = "All"
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
///         var test = new Bucket("test", BucketArgs.builder()
///             .bucket("my-tf-test-bucket")
///             .build());
///
///         var inventory = new Bucket("inventory", BucketArgs.builder()
///             .bucket("my-tf-inventory-bucket")
///             .build());
///
///         var test_prefix = new Inventory("test-prefix", InventoryArgs.builder()
///             .schedule(InventoryScheduleArgs.builder()
///                 .frequency("Daily")
///                 .build())
///             .filter(InventoryFilterArgs.builder()
///                 .prefix("documents/")
///                 .build())
///             .destination(InventoryDestinationArgs.builder()
///                 .bucket(InventoryDestinationBucketArgs.builder()
///                     .format("ORC")
///                     .bucketArn(inventory.arn())
///                     .prefix("inventory")
///                     .build())
///                 .build())
///             .bucket(test.id())
///             .name("DocumentsWeekly")
///             .includedObjectVersions("All")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-test-bucket
///   inventory:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-tf-inventory-bucket
///   test-prefix:
///     type: aws:s3:Inventory
///     properties:
///       schedule:
///         frequency: Daily
///       filter:
///         prefix: documents/
///       destination:
///         bucket:
///           format: ORC
///           bucketArn: ${inventory.arn}
///           prefix: inventory
///       bucket: ${test.id}
///       name: DocumentsWeekly
///       includedObjectVersions: All
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 bucket inventory configurations using `bucket:inventory`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/inventory:Inventory my-bucket-entire-bucket my-bucket:EntireBucket
/// ```
class Inventory extends pulumi.CustomResource {
  /// Name of the source bucket that inventory lists the objects for. Both general purpose and directory buckets are supported.
  late final pulumi.Output<String> bucket;
  /// Where to publish the inventory results. See `destination` Block below.
  late final pulumi.Output<InventoryDestination> destination;
  /// Whether to enable the inventory.
  late final pulumi.Output<bool?> enabled;
  /// Inventory filter. The inventory only includes objects that meet the filter's criteria. See `filter` Block below.
  late final pulumi.Output<InventoryFilter?> filter;
  /// Object versions to include in the inventory list. Valid values: `All`, `Current`.
  late final pulumi.Output<String> includedObjectVersions;
  /// Unique identifier of the inventory configuration for the bucket.
  late final pulumi.Output<String> name;
  /// List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  late final pulumi.Output<List<String>?> optionalFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Schedule for generating inventory results. See `schedule` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<InventorySchedule> schedule;

  /// Creates a new [Inventory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Inventory]. {@macro pulumi_s3_inventory_inventory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Inventory(
    String name, {
    InventoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/inventory:Inventory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    destination = registerOutput<InventoryDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventoryDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    filter = registerOutput<InventoryFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventoryFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includedObjectVersions = registerOutput<String>('includedObjectVersions');
    this.name = registerOutput<String>('name');
    optionalFields = registerOutput<List<String>?>('optionalFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    schedule = registerOutput<InventorySchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventorySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Inventory] resource's state with the given [name] and [id].
  static Inventory get(
    String name,
    pulumi.Input<String> id, {
    InventoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Inventory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Inventory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/inventory:Inventory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    destination = registerOutput<InventoryDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventoryDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    filter = registerOutput<InventoryFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventoryFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includedObjectVersions = registerOutput<String>('includedObjectVersions');
    this.name = registerOutput<String>('name');
    optionalFields = registerOutput<List<String>?>('optionalFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    schedule = registerOutput<InventorySchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventorySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Inventory] resource.
  Inventory.reference(String urn)
    : super(
        'aws:s3/inventory:Inventory',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    destination = registerOutput<InventoryDestination>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventoryDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool?>('enabled');
    filter = registerOutput<InventoryFilter?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventoryFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includedObjectVersions = registerOutput<String>('includedObjectVersions');
    this.name = registerOutput<String>('name');
    optionalFields = registerOutput<List<String>?>('optionalFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    schedule = registerOutput<InventorySchedule>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InventorySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
