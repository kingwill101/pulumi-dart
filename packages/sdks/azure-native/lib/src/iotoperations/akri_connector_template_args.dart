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
      'extendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            AkriConnectorTemplateProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AkriConnectorTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateArgs(
      akriConnectorTemplateName: (() {
        final guardedValue = map['akriConnectorTemplateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AkriConnectorTemplateProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
