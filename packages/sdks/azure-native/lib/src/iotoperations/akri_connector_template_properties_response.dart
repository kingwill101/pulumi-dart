// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_aio_metadata_response.dart';
import 'akri_connector_template_device_inbound_endpoint_type_response.dart';
import 'akri_connector_template_diagnostics_response.dart';
import 'akri_connector_template_helm_configuration_response.dart';
import 'akri_connectors_mqtt_connection_configuration_response.dart';

/// AkriConnectorTemplate properties.
class AkriConnectorTemplatePropertiesResponse {
  /// Metadata about AIO.
  final pulumi.Input<AkriConnectorTemplateAioMetadataResponse>? aioMetadata;
  /// Device inbound endpoint types.
  final pulumi.Input<List<AkriConnectorTemplateDeviceInboundEndpointTypeResponse>> deviceInboundEndpointTypes;
  /// Diagnostics settings for the Connector template.
  final pulumi.Input<AkriConnectorTemplateDiagnosticsResponse>? diagnostics;
  /// Mqtt connection configuration settings.
  final pulumi.Input<AkriConnectorsMqttConnectionConfigurationResponse>? mqttConnectionConfiguration;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// The runtime configuration for the Connector template.
  final pulumi.Input<AkriConnectorTemplateHelmConfigurationResponse> runtimeConfiguration;

  /// Creates a new [AkriConnectorTemplatePropertiesResponse].
  /// [aioMetadata] Metadata about AIO.
  /// [deviceInboundEndpointTypes] Device inbound endpoint types.
  /// [diagnostics] Diagnostics settings for the Connector template.
  /// [mqttConnectionConfiguration] Mqtt connection configuration settings.
  /// [provisioningState] The status of the last operation.
  /// [runtimeConfiguration] The runtime configuration for the Connector template.
  AkriConnectorTemplatePropertiesResponse({
    this.aioMetadata,
    required this.deviceInboundEndpointTypes,
    this.diagnostics,
    this.mqttConnectionConfiguration,
    required this.provisioningState,
    required this.runtimeConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aioMetadata': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateAioMetadataResponse, Map<String, dynamic>>(aioMetadata, (value) => value.toMap()),
      'deviceInboundEndpointTypes': pulumi.Input.mapInputValue<List<AkriConnectorTemplateDeviceInboundEndpointTypeResponse>, List<Map<String, dynamic>>>(deviceInboundEndpointTypes, (value) => pulumi.Input.encodeList<AkriConnectorTemplateDeviceInboundEndpointTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateDiagnosticsResponse, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'mqttConnectionConfiguration': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsMqttConnectionConfigurationResponse, Map<String, dynamic>>(mqttConnectionConfiguration, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'runtimeConfiguration': pulumi.Input.mapInputValue<AkriConnectorTemplateHelmConfigurationResponse, Map<String, dynamic>>(runtimeConfiguration, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplatePropertiesResponse(
      aioMetadata: (() { final guardedValue = map['aioMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateAioMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceInboundEndpointTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorTemplateDeviceInboundEndpointTypeResponse>(map['deviceInboundEndpointTypes']!, (value) => AkriConnectorTemplateDeviceInboundEndpointTypeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateDiagnosticsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mqttConnectionConfiguration: (() { final guardedValue = map['mqttConnectionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorsMqttConnectionConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      runtimeConfiguration: pulumi.Input.fromValue(AkriConnectorTemplateHelmConfigurationResponse.fromMap((map['runtimeConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

