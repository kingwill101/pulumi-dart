// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_event_hub_ingestion_endpoint_configuration.dart';
import 'iot_mapping_properties.dart';
import 'service_managed_identity_identity.dart';

/// {@template pulumi_healthcareapis_iot_connector_args_doc}
/// The set of arguments for IotConnector.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_iot_connector_args_doc}
class IotConnectorArgs {
  /// Device Mappings.
  final pulumi.Input<IotMappingProperties>? deviceMapping;
  /// Setting indicating whether the service has a managed identity associated with it.
  final pulumi.Input<ServiceManagedIdentityIdentity>? identity;
  /// Source configuration.
  final pulumi.Input<IotEventHubIngestionEndpointConfiguration>? ingestionEndpointConfiguration;
  /// The name of IoT Connector resource.
  final pulumi.Input<String>? iotConnectorName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IotConnectorArgs].
  /// [deviceMapping] Device Mappings.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [ingestionEndpointConfiguration] Source configuration.
  /// [iotConnectorName] The name of IoT Connector resource.
  /// [location] The resource location.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [tags] Resource tags.
  /// [workspaceName] The name of workspace resource.
  const IotConnectorArgs({
    this.deviceMapping,
    this.identity,
    this.ingestionEndpointConfiguration,
    this.iotConnectorName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMapping': ?pulumi.Input.mapOptionalInputValue<IotMappingProperties, Map<String, dynamic>>(deviceMapping, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceManagedIdentityIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingestionEndpointConfiguration': ?pulumi.Input.mapOptionalInputValue<IotEventHubIngestionEndpointConfiguration, Map<String, dynamic>>(ingestionEndpointConfiguration, (value) => value.toMap()),
      'iotConnectorName': ?iotConnectorName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory IotConnectorArgs.fromMap(Map<String, dynamic> map) {
    return IotConnectorArgs(
      deviceMapping: (() { final guardedValue = map['deviceMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IotMappingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceManagedIdentityIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingestionEndpointConfiguration: (() { final guardedValue = map['ingestionEndpointConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IotEventHubIngestionEndpointConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iotConnectorName: (() { final guardedValue = map['iotConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

