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
    pulumi.Output<String>? location,
    pulumi.Output<SchedulerProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? schedulerName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<SchedulerProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schedulerName = pulumi.Input.asOptionalInput<String>(schedulerName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<SchedulerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'schedulerName': ?schedulerName,
      'tags': ?tags,
    };
  }

  factory SchedulerArgs.fromMap(Map<String, dynamic> map) {
    return SchedulerArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<SchedulerProperties>(SchedulerProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schedulerName: map['schedulerName'] == null ? null : pulumi.Output.create<String>(map['schedulerName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

