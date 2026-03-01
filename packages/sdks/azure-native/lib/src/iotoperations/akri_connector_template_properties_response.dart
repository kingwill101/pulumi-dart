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
  final AkriConnectorTemplateAioMetadataResponse? aioMetadata;
  /// Device inbound endpoint types.
  final List<AkriConnectorTemplateDeviceInboundEndpointTypeResponse> deviceInboundEndpointTypes;
  /// Diagnostics settings for the Connector template.
  final AkriConnectorTemplateDiagnosticsResponse? diagnostics;
  /// Mqtt connection configuration settings.
  final AkriConnectorsMqttConnectionConfigurationResponse? mqttConnectionConfiguration;
  /// The status of the last operation.
  final String provisioningState;
  /// The runtime configuration for the Connector template.
  final AkriConnectorTemplateHelmConfigurationResponse runtimeConfiguration;

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
      'aioMetadata': ?aioMetadata == null ? null : aioMetadata!.toMap(),
      'deviceInboundEndpointTypes': pulumi.Input.encodeList<AkriConnectorTemplateDeviceInboundEndpointTypeResponse, Map<String, dynamic>>(deviceInboundEndpointTypes, (value) => value.toMap()),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'mqttConnectionConfiguration': ?mqttConnectionConfiguration == null ? null : mqttConnectionConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'runtimeConfiguration': runtimeConfiguration.toMap(),
    };
  }

  factory AkriConnectorTemplatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplatePropertiesResponse(
      aioMetadata: map['aioMetadata'] == null ? null : AkriConnectorTemplateAioMetadataResponse.fromMap((map['aioMetadata'] as Map).cast<String, dynamic>()),
      deviceInboundEndpointTypes: pulumi.Input.decodeList<AkriConnectorTemplateDeviceInboundEndpointTypeResponse>(map['deviceInboundEndpointTypes'], (value) => AkriConnectorTemplateDeviceInboundEndpointTypeResponse.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: map['diagnostics'] == null ? null : AkriConnectorTemplateDiagnosticsResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      mqttConnectionConfiguration: map['mqttConnectionConfiguration'] == null ? null : AkriConnectorsMqttConnectionConfigurationResponse.fromMap((map['mqttConnectionConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      runtimeConfiguration: AkriConnectorTemplateHelmConfigurationResponse.fromMap((map['runtimeConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

