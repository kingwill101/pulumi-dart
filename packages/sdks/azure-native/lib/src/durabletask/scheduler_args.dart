// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_properties.dart';

/// {@template pulumi_durabletask_scheduler_args_doc}
/// The set of arguments for Scheduler.
/// {@endtemplate}
/// {@macro pulumi_durabletask_scheduler_args_doc}
class SchedulerArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The resource-specific properties for this resource.
  final pulumi.Input<SchedulerProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Scheduler
  final pulumi.Input<String>? schedulerName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SchedulerArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schedulerName] The name of the Scheduler
  /// [tags] Resource tags.
  SchedulerArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.schedulerName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            SchedulerProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'schedulerName': ?schedulerName,
      'tags': ?tags,
    };
  }

  factory SchedulerArgs.fromMap(Map<String, dynamic> map) {
    return SchedulerArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchedulerProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      schedulerName: (() {
        final guardedValue = map['schedulerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
