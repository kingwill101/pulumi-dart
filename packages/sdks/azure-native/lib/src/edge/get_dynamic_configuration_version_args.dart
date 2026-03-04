// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_dynamic_configuration_version_args_doc}
/// Arguments for getDynamicConfigurationVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_get_dynamic_configuration_version_args_doc}
class GetDynamicConfigurationVersionArgs {
  /// Name of the Configuration
  final pulumi.Input<String> configurationName;

  /// Name of the dynamic configuration
  final pulumi.Input<String> dynamicConfigurationName;

  /// The name of the DynamicConfigurationVersion
  final pulumi.Input<String> dynamicConfigurationVersionName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDynamicConfigurationVersionArgs].
  /// [configurationName] Name of the Configuration
  /// [dynamicConfigurationName] Name of the dynamic configuration
  /// [dynamicConfigurationVersionName] The name of the DynamicConfigurationVersion
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDynamicConfigurationVersionArgs({
    required this.configurationName,
    required this.dynamicConfigurationName,
    required this.dynamicConfigurationVersionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'dynamicConfigurationName': dynamicConfigurationName,
      'dynamicConfigurationVersionName': dynamicConfigurationVersionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDynamicConfigurationVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamicConfigurationVersionArgs(
      configurationName: pulumi.Input.fromValue(
        map['configurationName'] as String,
      ),
      dynamicConfigurationName: pulumi.Input.fromValue(
        map['dynamicConfigurationName'] as String,
      ),
      dynamicConfigurationVersionName: pulumi.Input.fromValue(
        map['dynamicConfigurationVersionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
