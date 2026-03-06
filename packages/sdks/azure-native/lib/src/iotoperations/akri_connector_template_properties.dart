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
  final pulumi.Input<AkriConnectorTemplateAioMetadata>? aioMetadata;
  /// Device inbound endpoint types.
  final pulumi.Input<List<AkriConnectorTemplateDeviceInboundEndpointType>> deviceInboundEndpointTypes;
  /// Diagnostics settings for the Connector template.
  final pulumi.Input<AkriConnectorTemplateDiagnostics>? diagnostics;
  /// Mqtt connection configuration settings.
  final pulumi.Input<AkriConnectorsMqttConnectionConfiguration>? mqttConnectionConfiguration;
  /// The runtime configuration for the Connector template.
  final pulumi.Input<AkriConnectorTemplateHelmConfiguration> runtimeConfiguration;

  /// Creates a new [AkriConnectorTemplateProperties].
  /// [aioMetadata] Metadata about AIO.
  /// [deviceInboundEndpointTypes] Device inbound endpoint types.
  /// [diagnostics] Diagnostics settings for the Connector template.
  /// [mqttConnectionConfiguration] Mqtt connection configuration settings.
  /// [runtimeConfiguration] The runtime configuration for the Connector template.
  const AkriConnectorTemplateProperties({
    this.aioMetadata,
    required this.deviceInboundEndpointTypes,
    this.diagnostics,
    this.mqttConnectionConfiguration,
    required this.runtimeConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aioMetadata': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateAioMetadata, Map<String, dynamic>>(aioMetadata, (value) => value.toMap()),
      'deviceInboundEndpointTypes': pulumi.Input.mapInputValue<List<AkriConnectorTemplateDeviceInboundEndpointType>, List<Map<String, dynamic>>>(deviceInboundEndpointTypes, (value) => pulumi.Input.encodeList<AkriConnectorTemplateDeviceInboundEndpointType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateDiagnostics, Map<String, dynamic>>(diagnostics, (value) => value.toMap()),
      'mqttConnectionConfiguration': ?pulumi.Input.mapOptionalInputValue<AkriConnectorsMqttConnectionConfiguration, Map<String, dynamic>>(mqttConnectionConfiguration, (value) => value.toMap()),
      'runtimeConfiguration': pulumi.Input.mapInputValue<AkriConnectorTemplateHelmConfiguration, Map<String, dynamic>>(runtimeConfiguration, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateProperties.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateProperties(
      aioMetadata: (() { final guardedValue = map['aioMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateAioMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceInboundEndpointTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<AkriConnectorTemplateDeviceInboundEndpointType>(map['deviceInboundEndpointTypes']!, (value) => AkriConnectorTemplateDeviceInboundEndpointType.fromMap((value as Map).cast<String, dynamic>()))),
      diagnostics: (() { final guardedValue = map['diagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mqttConnectionConfiguration: (() { final guardedValue = map['mqttConnectionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorsMqttConnectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeConfiguration: pulumi.Input.fromValue(AkriConnectorTemplateHelmConfiguration.fromMap((map['runtimeConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}

