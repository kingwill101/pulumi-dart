// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_config_service_configuration_recorder_status_args_doc}
/// Arguments for getConfigServiceConfigurationRecorderStatus.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_config_service_configuration_recorder_status_args_doc}
class GetConfigServiceConfigurationRecorderStatusArgs {
  /// Name of ConfigServiceConfigurationRecorderStatus
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigServiceConfigurationRecorderStatusArgs].
  /// [name] Name of ConfigServiceConfigurationRecorderStatus
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigServiceConfigurationRecorderStatusArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigServiceConfigurationRecorderStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigServiceConfigurationRecorderStatusArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

