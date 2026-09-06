// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_target_args_doc}
class TargetArgs {
  /// The resource-specific properties for this resource.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The target resource name.
  final pulumi.Input<String?>? targetName;
  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [TargetArgs].
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetName] The target resource name.
  /// [watcherName] The database watcher name.
  const TargetArgs({
    this.properties,
    required this.resourceGroupName,
    this.targetName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'targetName': ?targetName,
      'watcherName': watcherName,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      targetName: (() { final guardedValue = map['targetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      watcherName: pulumi.Input.fromValue(map['watcherName'] as String),
    );
  }
}
