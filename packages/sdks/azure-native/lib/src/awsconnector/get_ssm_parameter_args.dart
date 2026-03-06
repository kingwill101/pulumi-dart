// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ssm_parameter_args_doc}
/// Arguments for getSsmParameter.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ssm_parameter_args_doc}
class GetSsmParameterArgs {
  /// Name of SsmParameter
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSsmParameterArgs].
  /// [name] Name of SsmParameter
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetSsmParameterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSsmParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetSsmParameterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

