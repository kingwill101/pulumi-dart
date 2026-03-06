// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_device_inbound_endpoint_configuration_schema_refs_response.dart';

/// AkriConnectorTemplateDeviceInboundEndpointType properties.
class AkriConnectorTemplateDeviceInboundEndpointTypeResponse {
  /// The configuration schema references for the device inbound endpoint.
  final pulumi.Input<AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse>? configurationSchemaRefs;
  /// A description of the device inbound endpoint.
  final pulumi.Input<String>? description;
  /// The type of the device inbound endpoint.
  final pulumi.Input<String> endpointType;
  /// The version of the device inbound endpoint.
  final pulumi.Input<String>? version;

  /// Creates a new [AkriConnectorTemplateDeviceInboundEndpointTypeResponse].
  /// [configurationSchemaRefs] The configuration schema references for the device inbound endpoint.
  /// [description] A description of the device inbound endpoint.
  /// [endpointType] The type of the device inbound endpoint.
  /// [version] The version of the device inbound endpoint.
  const AkriConnectorTemplateDeviceInboundEndpointTypeResponse({
    this.configurationSchemaRefs,
    this.description,
    required this.endpointType,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSchemaRefs': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse, Map<String, dynamic>>(configurationSchemaRefs, (value) => value.toMap()),
      'description': ?description,
      'endpointType': endpointType,
      'version': ?version,
    };
  }

  factory AkriConnectorTemplateDeviceInboundEndpointTypeResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateDeviceInboundEndpointTypeResponse(
      configurationSchemaRefs: (() { final guardedValue = map['configurationSchemaRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateDeviceInboundEndpointConfigurationSchemaRefsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

