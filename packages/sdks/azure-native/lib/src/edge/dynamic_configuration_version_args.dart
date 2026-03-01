// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_configuration_version_properties.dart';

/// {@template pulumi_edge_dynamic_configuration_version_args_doc}
/// The set of arguments for DynamicConfigurationVersion.
/// {@endtemplate}
/// {@macro pulumi_edge_dynamic_configuration_version_args_doc}
class DynamicConfigurationVersionArgs {
  /// Name of the Configuration
  final pulumi.Input<String> configurationName;
  /// Name of the dynamic configuration
  final pulumi.Input<String> dynamicConfigurationName;
  /// The name of the DynamicConfigurationVersion
  final pulumi.Input<String>? dynamicConfigurationVersionName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DynamicConfigurationVersionProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DynamicConfigurationVersionArgs].
  /// [configurationName] Name of the Configuration
  /// [dynamicConfigurationName] Name of the dynamic configuration
  /// [dynamicConfigurationVersionName] The name of the DynamicConfigurationVersion
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DynamicConfigurationVersionArgs({
    required pulumi.Output<String> configurationName,
    required pulumi.Output<String> dynamicConfigurationName,
    pulumi.Output<String>? dynamicConfigurationVersionName,
    pulumi.Output<DynamicConfigurationVersionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      dynamicConfigurationName = pulumi.Input.asInput<String>(dynamicConfigurationName),
      dynamicConfigurationVersionName = pulumi.Input.asOptionalInput<String>(dynamicConfigurationVersionName),
      properties = pulumi.Input.asOptionalInput<DynamicConfigurationVersionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'dynamicConfigurationName': dynamicConfigurationName,
      'dynamicConfigurationVersionName': ?dynamicConfigurationVersionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<DynamicConfigurationVersionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DynamicConfigurationVersionArgs.fromMap(Map<String, dynamic> map) {
    return DynamicConfigurationVersionArgs(
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      dynamicConfigurationName: pulumi.Output.create<String>(map['dynamicConfigurationName'] as String),
      dynamicConfigurationVersionName: map['dynamicConfigurationVersionName'] == null ? null : pulumi.Output.create<String>(map['dynamicConfigurationVersionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DynamicConfigurationVersionProperties>(DynamicConfigurationVersionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

