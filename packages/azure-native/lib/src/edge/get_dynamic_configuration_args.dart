// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_dynamic_configuration_args_doc}
/// Arguments for getDynamicConfiguration.
/// {@endtemplate}
/// {@macro pulumi_edge_get_dynamic_configuration_args_doc}
class GetDynamicConfigurationArgs {
  /// Name of the Configuration
  final pulumi.Input<String> configurationName;
  /// Name of the dynamic configuration
  final pulumi.Input<String> dynamicConfigurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDynamicConfigurationArgs].
  /// [configurationName] Name of the Configuration
  /// [dynamicConfigurationName] Name of the dynamic configuration
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDynamicConfigurationArgs({
    required String configurationName,
    required String dynamicConfigurationName,
    required String resourceGroupName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      dynamicConfigurationName = pulumi.Input.asInput<String>(dynamicConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'dynamicConfigurationName': dynamicConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDynamicConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamicConfigurationArgs(
      configurationName: map['configurationName'] as String,
      dynamicConfigurationName: map['dynamicConfigurationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

