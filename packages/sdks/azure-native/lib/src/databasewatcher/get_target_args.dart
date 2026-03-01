// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasewatcher_get_target_args_doc}
/// Arguments for getTarget.
/// {@endtemplate}
/// {@macro pulumi_databasewatcher_get_target_args_doc}
class GetTargetArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The target resource name.
  final pulumi.Input<String> targetName;
  /// The database watcher name.
  final pulumi.Input<String> watcherName;

  /// Creates a new [GetTargetArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetName] The target resource name.
  /// [watcherName] The database watcher name.
  GetTargetArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> targetName,
    required pulumi.Output<String> watcherName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetName = pulumi.Input.asInput<String>(targetName),
      watcherName = pulumi.Input.asInput<String>(watcherName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'targetName': targetName,
      'watcherName': watcherName,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      targetName: pulumi.Output.create<String>(map['targetName'] as String),
      watcherName: pulumi.Output.create<String>(map['watcherName'] as String),
    );
  }
}

