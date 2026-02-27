// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../inventory_destination/inventory_destination.dart';
import '../inventory_filter/inventory_filter.dart';
import '../inventory_schedule/inventory_schedule.dart';

/// The set of arguments for Inventory.
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

  InventoryArgs({
    required this.bucket,
    required this.destination,
    this.enabled,
    this.filter,
    required this.includedObjectVersions,
    this.name,
    this.optionalFields,
    this.region,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['destination'] =
        pulumi.Input.mapInputValue<InventoryDestination, Map<String, dynamic>>(
            destination, (value) => value.toMap());
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = pulumi.Input.mapOptionalInputValue<InventoryFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    map['includedObjectVersions'] = includedObjectVersions;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionalFieldsValue = optionalFields;
    if (optionalFieldsValue != null) {
      map['optionalFields'] = optionalFieldsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schedule'] =
        pulumi.Input.mapInputValue<InventorySchedule, Map<String, dynamic>>(
            schedule, (value) => value.toMap());
    return map;
  }

  factory InventoryArgs.fromMap(Map<String, dynamic> map) {
    return InventoryArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      destination:
          pulumi.Input.asInput<InventoryDestination>(map['destination']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      filter: pulumi.Input.asOptionalInput<InventoryFilter>(map['filter']),
      includedObjectVersions:
          pulumi.Input.asInput<String>(map['includedObjectVersions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      optionalFields:
          pulumi.Input.asOptionalInput<List<String>>(map['optionalFields']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schedule: pulumi.Input.asInput<InventorySchedule>(map['schedule']),
    );
  }
}
