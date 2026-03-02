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
      aioMetadata: map['aioMetadata'] == null ? null : (AkriConnectorTemplateAioMetadataResponse.fromMap((map['aioMetadata'] as Map).cast<String, dynamic>())).input(),
      deviceInboundEndpointTypes: (pulumi.Input.decodeList<AkriConnectorTemplateDeviceInboundEndpointTypeResponse>(map['deviceInboundEndpointTypes'], (value) => AkriConnectorTemplateDeviceInboundEndpointTypeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diagnostics: map['diagnostics'] == null ? null : (AkriConnectorTemplateDiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>())).input(),
      mqttConnectionConfiguration: map['mqttConnectionConfiguration'] == null ? null : (AkriConnectorsMqttConnectionConfigurationResponse.fromMap((map['mqttConnectionConfiguration'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      runtimeConfiguration: (AkriConnectorTemplateHelmConfigurationResponse.fromMap((map['runtimeConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

