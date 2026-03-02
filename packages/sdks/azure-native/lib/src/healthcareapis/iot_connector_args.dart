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
  IotConnectorArgs({
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
      deviceMapping: map['deviceMapping'] == null ? null : (IotMappingProperties.fromMap((map['deviceMapping'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ServiceManagedIdentityIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      ingestionEndpointConfiguration: map['ingestionEndpointConfiguration'] == null ? null : (IotEventHubIngestionEndpointConfiguration.fromMap((map['ingestionEndpointConfiguration'] as Map).cast<String, dynamic>())).input(),
      iotConnectorName: map['iotConnectorName'] == null ? null : (map['iotConnectorName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

