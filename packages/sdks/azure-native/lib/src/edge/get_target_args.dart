// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_target_args_doc}
/// Arguments for getTarget.
/// {@endtemplate}
/// {@macro pulumi_edge_get_target_args_doc}
class GetTargetArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [GetTargetArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetName] Name of the target
  GetTargetArgs({
    required this.resourceGroupName,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'targetName': targetName,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      targetName: (map['targetName'] as String).input(),
    );
  }
}

