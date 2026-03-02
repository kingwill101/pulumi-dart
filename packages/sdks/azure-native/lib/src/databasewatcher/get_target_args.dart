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
    required this.resourceGroupName,
    required this.targetName,
    required this.watcherName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'targetName': targetName,
      'watcherName': watcherName,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      targetName: (map['targetName'] as String).input(),
      watcherName: (map['watcherName'] as String).input(),
    );
  }
}

