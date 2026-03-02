// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDiscoveredAssetEndpointProfile.
class GetDiscoveredAssetEndpointProfileResult {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  final String? additionalConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Identifier used to detect changes in the asset endpoint profile.
  final String discoveryId;
  /// Defines the configuration for the connector type that is being used with the endpoint profile.
  final String endpointProfileType;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// List of supported authentication methods supported by the target server.
  final List<String>? supportedAuthenticationMethods;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  final String targetAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// An integer that is incremented each time the resource is modified.
  final double version;

  /// Creates a new [GetDiscoveredAssetEndpointProfileResult].
  /// [additionalConfiguration] Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoveryId] Identifier used to detect changes in the asset endpoint profile.
  /// [endpointProfileType] Defines the configuration for the connector type that is being used with the endpoint profile.
  /// [extendedLocation] The extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [supportedAuthenticationMethods] List of supported authentication methods supported by the target server.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [targetAddress] The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] An integer that is incremented each time the resource is modified.
  GetDiscoveredAssetEndpointProfileResult({
    this.additionalConfiguration,
    required this.azureApiVersion,
    required this.discoveryId,
    required this.endpointProfileType,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.supportedAuthenticationMethods,
    required this.systemData,
    this.tags,
    required this.targetAddress,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'azureApiVersion': azureApiVersion,
      'discoveryId': discoveryId,
      'endpointProfileType': endpointProfileType,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'supportedAuthenticationMethods': ?supportedAuthenticationMethods,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetAddress': targetAddress,
      'type': type,
      'version': version,
    };
  }

  factory GetDiscoveredAssetEndpointProfileResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredAssetEndpointProfileResult(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : map['additionalConfiguration']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      discoveryId: map['discoveryId'] as String,
      endpointProfileType: map['endpointProfileType'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      supportedAuthenticationMethods: map['supportedAuthenticationMethods'] == null ? null : (map['supportedAuthenticationMethods']! as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      targetAddress: map['targetAddress'] as String,
      type: map['type'] as String,
      version: map['version'] as double,
    );
  }
}

