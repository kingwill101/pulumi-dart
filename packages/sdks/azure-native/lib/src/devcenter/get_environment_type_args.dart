// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_environment_type_args_doc}
/// Arguments for getEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_environment_type_args_doc}
class GetEnvironmentTypeArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the environment type.
  final pulumi.Input<String> environmentTypeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnvironmentTypeArgs].
  /// [devCenterName] The name of the devcenter.
  /// [environmentTypeName] The name of the environment type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEnvironmentTypeArgs({
    required this.devCenterName,
    required this.environmentTypeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'environmentTypeName': environmentTypeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentTypeArgs(
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      environmentTypeName: pulumi.Input.fromValue(map['environmentTypeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
