// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_action_properties.dart';

/// {@template pulumi_computeschedule_scheduled_action_args_doc}
/// The set of arguments for ScheduledAction.
/// {@endtemplate}
/// {@macro pulumi_computeschedule_scheduled_action_args_doc}
class ScheduledActionArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ScheduledActionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ScheduledAction
  final pulumi.Input<String>? scheduledActionName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ScheduledActionArgs].
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scheduledActionName] The name of the ScheduledAction
  /// [tags] Resource tags.
  const ScheduledActionArgs({
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.scheduledActionName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ScheduledActionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scheduledActionName': ?scheduledActionName,
      'tags': ?tags,
    };
  }

  factory ScheduledActionArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledActionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduledActionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scheduledActionName: (() { final guardedValue = map['scheduledActionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
