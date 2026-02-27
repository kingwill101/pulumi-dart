import 'package:pulumi/pulumi.dart' as pulumi;
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
///
///
/// ### Add inventory configuration with S3 object prefix
///
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
  /// Name of the source bucket that inventory lists the objects for.
  late final pulumi.Output<String> bucket;

  /// Contains information about where to publish the inventory results (documented below).
  late final pulumi.Output<InventoryDestination> destination;

  /// Specifies whether the inventory is enabled or disabled.
  late final pulumi.Output<bool?> enabled;

  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below).
  late final pulumi.Output<InventoryFilter?> filter;

  /// Object versions to include in the inventory list. Valid values: `All`, `Current`.
  late final pulumi.Output<String> includedObjectVersions;

  /// Unique identifier of the inventory configuration for the bucket.
  late final pulumi.Output<String> name;

  /// List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  late final pulumi.Output<List<String>?> optionalFields;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the schedule for generating inventory results (documented below).
  late final pulumi.Output<InventorySchedule> schedule;

  Inventory(
    String name, {
    InventoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/inventory:Inventory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
