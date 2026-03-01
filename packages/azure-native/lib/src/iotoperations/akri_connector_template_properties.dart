// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_aio_metadata.dart';
import 'akri_connector_template_device_inbound_endpoint_type.dart';
import 'akri_connector_template_diagnostics.dart';
import 'akri_connector_template_helm_configuration.dart';
import 'akri_connectors_mqtt_connection_configuration.dart';

/// AkriConnectorTemplate properties.
class AkriConnectorTemplateProperties {
  /// Metadata about AIO.
  final AkriConnectorTemplateAioMetadata? aioMetadata;
  /// Device inbound endpoint types.
  final List<AkriConnectorTemplateDeviceInboundEndpointType> deviceInboundEndpointTypes;
  /// Diagnostics settings for the Connector template.
  final AkriConnectorTemplateDiagnostics? diagnostics;
  /// Mqtt connection configuration settings.
  final AkriConnectorsMqttConnectionConfiguration? mqttConnectionConfiguration;
  /// The runtime configuration for the Connector template.
  final AkriConnectorTemplateHelmConfiguration runtimeConfiguration;

  /// Creates a new [AkriConnectorTemplateProperties].
  /// [aioMetadata] Metadata about AIO.
  /// [deviceInboundEndpointTypes] Device inbound endpoint types.
  /// [diagnostics] Diagnostics settings for the Connector template.
  /// [mqttConnectionConfiguration] Mqtt connection configuration settings.
  /// [runtimeConfiguration] The runtime configuration for the Connector template.
  AkriConnectorTemplateProperties({
    this.aioMetadata,
    required this.deviceInboundEndpointTypes,
    this.diagnostics,
    this.mqttConnectionConfiguration,
    required this.runtimeConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aioMetadata': ?aioMetadata == null ? null : aioMetadata!.toMap(),
      'deviceInboundEndpointTypes': pulumi.Input.encodeList<AkriConnectorTemplateDeviceInboundEndpointType, Map<String, dynamic>>(deviceInboundEndpointTypes, (value) => value.toMap()),
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'mqttConnectionConfiguration': ?mqttConnectionConfiguration == null ? null : mqttConnectionConfiguration!.toMap(),
      'runtimeConfiguration': runtimeConfiguration.toMap(),
    };
  }

  factory AkriConnectorTemplateProperties.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateProperties(
      aioMetadata: map['aioMetadata'] == null ? null : AkriConnectorTemplateAioMetadata.fromMap((map['aioMetadata'] as Map).cast<String, dynamic>()),
      deviceInboundEndpointTypes: pulumi.Input.decodeList<AkriConnectorTemplateDeviceInboundEndpointType>(map['deviceInboundEndpointTypes'], (value) => AkriConnectorTemplateDeviceInboundEndpointType.fromMap((value as Map).cast<String, dynamic>())),
      diagnostics: map['diagnostics'] == null ? null : AkriConnectorTemplateDiagnostics.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      mqttConnectionConfiguration: map['mqttConnectionConfiguration'] == null ? null : AkriConnectorsMqttConnectionConfiguration.fromMap((map['mqttConnectionConfiguration'] as Map).cast<String, dynamic>()),
      runtimeConfiguration: AkriConnectorTemplateHelmConfiguration.fromMap((map['runtimeConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

