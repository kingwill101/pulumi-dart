// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDiscoveredAssetEndpointProfile.
class GetDiscoveredAssetEndpointProfileResult {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  final String? additionalConfiguration;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Identifier used to detect changes in the asset endpoint profile.
  final String? discoveryId;
  /// Defines the configuration for the connector type that is being used with the endpoint profile.
  final String? endpointProfileType;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// List of supported authentication methods supported by the target server.
  final List<String>? supportedAuthenticationMethods;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  final String? targetAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// An integer that is incremented each time the resource is modified.
  final double? version;

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
  const GetDiscoveredAssetEndpointProfileResult({
    this.additionalConfiguration,
    this.azureApiVersion,
    this.discoveryId,
    this.endpointProfileType,
    this.extendedLocation,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.supportedAuthenticationMethods,
    this.systemData,
    this.tags,
    this.targetAddress,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'azureApiVersion': ?azureApiVersion,
      'discoveryId': ?discoveryId,
      'endpointProfileType': ?endpointProfileType,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'supportedAuthenticationMethods': ?supportedAuthenticationMethods,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'targetAddress': ?targetAddress,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetDiscoveredAssetEndpointProfileResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredAssetEndpointProfileResult(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveryId: (() { final guardedValue = map['discoveryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointProfileType: (() { final guardedValue = map['endpointProfileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedAuthenticationMethods: (() { final guardedValue = map['supportedAuthenticationMethods']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetAddress: (() { final guardedValue = map['targetAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
