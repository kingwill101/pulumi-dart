// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_cloud_formation_stack_set_args_doc}
/// Arguments for getCloudFormationStackSet.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_cloud_formation_stack_set_args_doc}
class GetCloudFormationStackSetArgs {
  /// Name of CloudFormationStackSet
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudFormationStackSetArgs].
  /// [name] Name of CloudFormationStackSet
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudFormationStackSetArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudFormationStackSetArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationStackSetArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

