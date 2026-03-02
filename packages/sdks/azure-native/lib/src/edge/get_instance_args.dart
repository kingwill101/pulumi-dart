// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_edge_get_instance_args_doc}
class GetInstanceArgs {
  /// Name of the instance
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the solution
  final pulumi.Input<String> solutionName;
  /// Name of the target
  final pulumi.Input<String> targetName;

  /// Creates a new [GetInstanceArgs].
  /// [instanceName] Name of the instance
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [solutionName] Name of the solution
  /// [targetName] Name of the target
  GetInstanceArgs({
    required this.instanceName,
    required this.resourceGroupName,
    required this.solutionName,
    required this.targetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
      'solutionName': solutionName,
      'targetName': targetName,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      instanceName: (map['instanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      solutionName: (map['solutionName'] as String).input(),
      targetName: (map['targetName'] as String).input(),
    );
  }
}

