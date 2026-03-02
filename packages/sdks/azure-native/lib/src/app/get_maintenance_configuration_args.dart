// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_maintenance_configuration_args_doc}
/// Arguments for getMaintenanceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_app_get_maintenance_configuration_args_doc}
class GetMaintenanceConfigurationArgs {
  /// The name of the maintenance configuration.
  final pulumi.Input<String> configName;
  /// The name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMaintenanceConfigurationArgs].
  /// [configName] The name of the maintenance configuration.
  /// [environmentName] The name of the Managed Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMaintenanceConfigurationArgs({
    required this.configName,
    required this.environmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configName': configName,
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMaintenanceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceConfigurationArgs(
      configName: (map['configName'] as String).input(),
      environmentName: (map['environmentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

