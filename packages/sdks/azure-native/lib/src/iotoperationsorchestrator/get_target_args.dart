// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperationsorchestrator_get_target_args_doc}
/// Arguments for getTarget.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsorchestrator_get_target_args_doc}
class GetTargetArgs {
  /// Name of target.
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetTargetArgs].
  /// [name] Name of target.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetTargetArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
