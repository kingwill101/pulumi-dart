// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_cloud_formation_stack_args_doc}
/// Arguments for getCloudFormationStack.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_cloud_formation_stack_args_doc}
class GetCloudFormationStackArgs {
  /// Name of CloudFormationStack
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudFormationStackArgs].
  /// [name] Name of CloudFormationStack
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCloudFormationStackArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudFormationStackArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudFormationStackArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

