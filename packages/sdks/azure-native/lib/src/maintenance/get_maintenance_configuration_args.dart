// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_maintenance_configuration_args_doc}
/// Arguments for getMaintenanceConfiguration.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_maintenance_configuration_args_doc}
class GetMaintenanceConfigurationArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the MaintenanceConfiguration
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetMaintenanceConfigurationArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the MaintenanceConfiguration
  GetMaintenanceConfigurationArgs({
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetMaintenanceConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceConfigurationArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

