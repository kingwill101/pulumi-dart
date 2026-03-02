// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_akri_connector_template_args_doc}
/// The set of arguments for AkriConnectorTemplate.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_akri_connector_template_args_doc}
class AkriConnectorTemplateArgs {
  /// Name of AkriConnectorTemplate resource.
  final pulumi.Input<String>? akriConnectorTemplateName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<AkriConnectorTemplateProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AkriConnectorTemplateArgs].
  /// [akriConnectorTemplateName] Name of AkriConnectorTemplate resource.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AkriConnectorTemplateArgs({
    this.akriConnectorTemplateName,
    this.extendedLocation,
    required this.instanceName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akriConnectorTemplateName': ?akriConnectorTemplateName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AkriConnectorTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateArgs(
      akriConnectorTemplateName: map['akriConnectorTemplateName'] == null ? null : (map['akriConnectorTemplateName'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      instanceName: (map['instanceName'] as String).input(),
      properties: map['properties'] == null ? null : (AkriConnectorTemplateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

