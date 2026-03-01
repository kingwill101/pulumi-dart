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
  GetEnvironmentTypeArgs({
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> environmentTypeName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      environmentTypeName = pulumi.Input.asInput<String>(environmentTypeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'environmentTypeName': environmentTypeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentTypeArgs(
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      environmentTypeName: pulumi.Output.create<String>(map['environmentTypeName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

