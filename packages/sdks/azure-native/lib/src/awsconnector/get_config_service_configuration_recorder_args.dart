// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_config_service_configuration_recorder_args_doc}
/// Arguments for getConfigServiceConfigurationRecorder.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_config_service_configuration_recorder_args_doc}
class GetConfigServiceConfigurationRecorderArgs {
  /// Name of ConfigServiceConfigurationRecorder
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigServiceConfigurationRecorderArgs].
  /// [name] Name of ConfigServiceConfigurationRecorder
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConfigServiceConfigurationRecorderArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigServiceConfigurationRecorderArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigServiceConfigurationRecorderArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

