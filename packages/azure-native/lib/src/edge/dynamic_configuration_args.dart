// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_configuration_properties.dart';

/// {@template pulumi_edge_dynamic_configuration_args_doc}
/// The set of arguments for DynamicConfiguration.
/// {@endtemplate}
/// {@macro pulumi_edge_dynamic_configuration_args_doc}
class DynamicConfigurationArgs {
  /// Name of the Configuration
  final pulumi.Input<String> configurationName;
  /// Name of the dynamic configuration
  final pulumi.Input<String>? dynamicConfigurationName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DynamicConfigurationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DynamicConfigurationArgs].
  /// [configurationName] Name of the Configuration
  /// [dynamicConfigurationName] Name of the dynamic configuration
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DynamicConfigurationArgs({
    required String configurationName,
    String? dynamicConfigurationName,
    DynamicConfigurationProperties? properties,
    required String resourceGroupName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      dynamicConfigurationName = pulumi.Input.asOptionalInput<String>(dynamicConfigurationName),
      properties = pulumi.Input.asOptionalInput<DynamicConfigurationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'dynamicConfigurationName': ?dynamicConfigurationName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DynamicConfigurationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DynamicConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationArgs(
      configurationName: map['configurationName'] as String,
      dynamicConfigurationName: map['dynamicConfigurationName'] == null ? null : map['dynamicConfigurationName'] as String,
      properties: map['properties'] == null ? null : DynamicConfigurationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

