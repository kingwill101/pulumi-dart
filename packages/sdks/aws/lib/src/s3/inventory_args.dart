// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_destination.dart';
import 'inventory_filter.dart';
import 'inventory_schedule.dart';

/// {@template pulumi_s3_inventory_inventory_args_doc}
/// The set of arguments for Inventory.
/// {@endtemplate}
/// {@macro pulumi_s3_inventory_inventory_args_doc}
class InventoryArgs {
  /// Name of the source bucket that inventory lists the objects for.
  final pulumi.Input<String> bucket;
  /// Contains information about where to publish the inventory results (documented below).
  final pulumi.Input<InventoryDestination> destination;
  /// Specifies whether the inventory is enabled or disabled.
  final pulumi.Input<bool>? enabled;
  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below).
  final pulumi.Input<InventoryFilter>? filter;
  /// Object versions to include in the inventory list. Valid values: `All`, `Current`.
  final pulumi.Input<String> includedObjectVersions;
  /// Unique identifier of the inventory configuration for the bucket.
  final pulumi.Input<String>? name;
  /// List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  final pulumi.Input<List<String>>? optionalFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the schedule for generating inventory results (documented below).
  final pulumi.Input<InventorySchedule> schedule;

  /// Creates a new [InventoryArgs].
  /// [bucket] Name of the source bucket that inventory lists the objects for.
  /// [destination] Contains information about where to publish the inventory results (documented below).
  /// [enabled] Specifies whether the inventory is enabled or disabled.
  /// [filter] Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below).
  /// [includedObjectVersions] Object versions to include in the inventory list. Valid values: `All`, `Current`.
  /// [name] Unique identifier of the inventory configuration for the bucket.
  /// [optionalFields] List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] Specifies the schedule for generating inventory results (documented below).
  InventoryArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<InventoryDestination> destination,
    pulumi.Output<bool>? enabled,
    pulumi.Output<InventoryFilter>? filter,
    required pulumi.Output<String> includedObjectVersions,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? optionalFields,
    pulumi.Output<String>? region,
    required pulumi.Output<InventorySchedule> schedule,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      destination = pulumi.Input.asInput<InventoryDestination>(destination),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      filter = pulumi.Input.asOptionalInput<InventoryFilter>(filter),
      includedObjectVersions = pulumi.Input.asInput<String>(includedObjectVersions),
      name = pulumi.Input.asOptionalInput<String>(name),
      optionalFields = pulumi.Input.asOptionalInput<List<String>>(optionalFields),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asInput<InventorySchedule>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'destination': pulumi.Input.mapInputValue<InventoryDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'enabled': ?enabled,
      'filter': ?pulumi.Input.mapOptionalInputValue<InventoryFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includedObjectVersions': includedObjectVersions,
      'name': ?name,
      'optionalFields': ?optionalFields,
      'region': ?region,
      'schedule': pulumi.Input.mapInputValue<InventorySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory InventoryArgs.fromMap(Map<String, dynamic> map) {
    return InventoryArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      destination: pulumi.Output.create<InventoryDestination>(InventoryDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      filter: map['filter'] == null ? null : pulumi.Output.create<InventoryFilter>(InventoryFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      includedObjectVersions: pulumi.Output.create<String>(map['includedObjectVersions'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      optionalFields: map['optionalFields'] == null ? null : pulumi.Output.create<List<String>>((map['optionalFields'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedule: pulumi.Output.create<InventorySchedule>(InventorySchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
    );
  }
}

