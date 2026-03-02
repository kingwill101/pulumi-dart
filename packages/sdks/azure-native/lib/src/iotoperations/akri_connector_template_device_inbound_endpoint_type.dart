// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_device_inbound_endpoint_configuration_schema_refs.dart';

/// AkriConnectorTemplateDeviceInboundEndpointType properties.
class AkriConnectorTemplateDeviceInboundEndpointType {
  /// The configuration schema references for the device inbound endpoint.
  final pulumi.Input<AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs>? configurationSchemaRefs;
  /// A description of the device inbound endpoint.
  final pulumi.Input<String>? description;
  /// The type of the device inbound endpoint.
  final pulumi.Input<String> endpointType;
  /// The version of the device inbound endpoint.
  final pulumi.Input<String>? version;

  /// Creates a new [AkriConnectorTemplateDeviceInboundEndpointType].
  /// [configurationSchemaRefs] The configuration schema references for the device inbound endpoint.
  /// [description] A description of the device inbound endpoint.
  /// [endpointType] The type of the device inbound endpoint.
  /// [version] The version of the device inbound endpoint.
  AkriConnectorTemplateDeviceInboundEndpointType({
    this.configurationSchemaRefs,
    this.description,
    required this.endpointType,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSchemaRefs': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs, Map<String, dynamic>>(configurationSchemaRefs, (value) => value.toMap()),
      'description': ?description,
      'endpointType': endpointType,
      'version': ?version,
    };
  }

  factory AkriConnectorTemplateDeviceInboundEndpointType.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDeviceInboundEndpointType(
      configurationSchemaRefs: map['configurationSchemaRefs'] == null ? null : (AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefs.fromMap((map['configurationSchemaRefs']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

