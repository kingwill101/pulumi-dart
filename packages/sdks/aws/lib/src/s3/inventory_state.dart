// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inventory_destination.dart';
import 'inventory_filter.dart';
import 'inventory_schedule.dart';

/// Input properties used for looking up and filtering Inventory resources.
class InventoryState {
  /// Name of the source bucket that inventory lists the objects for.
  final pulumi.Input<String>? bucket;
  /// Contains information about where to publish the inventory results (documented below).
  final pulumi.Input<InventoryDestination>? destination;
  /// Specifies whether the inventory is enabled or disabled.
  final pulumi.Input<bool>? enabled;
  /// Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below).
  final pulumi.Input<InventoryFilter>? filter;
  /// Object versions to include in the inventory list. Valid values: `All`, `Current`.
  final pulumi.Input<String>? includedObjectVersions;
  /// Unique identifier of the inventory configuration for the bucket.
  final pulumi.Input<String>? name;
  /// List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  final pulumi.Input<List<String>>? optionalFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the schedule for generating inventory results (documented below).
  final pulumi.Input<InventorySchedule>? schedule;

  /// Creates a new [InventoryState].
  /// [bucket] Name of the source bucket that inventory lists the objects for.
  /// [destination] Contains information about where to publish the inventory results (documented below).
  /// [enabled] Specifies whether the inventory is enabled or disabled.
  /// [filter] Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below).
  /// [includedObjectVersions] Object versions to include in the inventory list. Valid values: `All`, `Current`.
  /// [name] Unique identifier of the inventory configuration for the bucket.
  /// [optionalFields] List of optional fields that are included in the inventory results. Please refer to the S3 [documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_InventoryConfiguration.html#AmazonS3-Type-InventoryConfiguration-OptionalFields) for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] Specifies the schedule for generating inventory results (documented below).
  InventoryState({
    this.bucket,
    this.destination,
    this.enabled,
    this.filter,
    this.includedObjectVersions,
    this.name,
    this.optionalFields,
    this.region,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'destination': ?pulumi.Input.mapOptionalInputValue<InventoryDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'enabled': ?enabled,
      'filter': ?pulumi.Input.mapOptionalInputValue<InventoryFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'includedObjectVersions': ?includedObjectVersions,
      'name': ?name,
      'optionalFields': ?optionalFields,
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<InventorySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory InventoryState.fromMap(Map<String, dynamic> map) {
    return InventoryState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InventoryDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InventoryFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includedObjectVersions: (() { final guardedValue = map['includedObjectVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalFields: (() { final guardedValue = map['optionalFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InventorySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

