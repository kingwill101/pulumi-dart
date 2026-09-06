// ignore_for_file: unused_element, unnecessary_cast

import 'asset_endpoint_profile_status_response.dart';
import 'authentication_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAssetEndpointProfile.
class GetAssetEndpointProfileResult {
  /// Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  final String? additionalConfiguration;
  /// Defines the client authentication mechanism to the server.
  final AuthenticationResponse? authentication;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Reference to a discovered asset endpoint profile. Populated only if the asset endpoint profile has been created from discovery flow. Discovered asset endpoint profile name must be provided.
  final String? discoveredAssetEndpointProfileRef;
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
  /// Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  final AssetEndpointProfileStatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  final String? targetAddress;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Globally unique, immutable, non-reusable id.
  final String? uuid;

  /// Creates a new [GetAssetEndpointProfileResult].
  /// [additionalConfiguration] Stringified JSON that contains connectivity type specific further configuration (e.g. OPC UA, Modbus, ONVIF).
  /// [authentication] Defines the client authentication mechanism to the server.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoveredAssetEndpointProfileRef] Reference to a discovered asset endpoint profile. Populated only if the asset endpoint profile has been created from discovery flow. Discovered asset endpoint profile name must be provided.
  /// [endpointProfileType] Defines the configuration for the connector type that is being used with the endpoint profile.
  /// [extendedLocation] The extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [status] Read only object to reflect changes that have occurred on the Edge. Similar to Kubernetes status property for custom resources.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [targetAddress] The local valid URI specifying the network address/DNS name of a southbound device. The scheme part of the targetAddress URI specifies the type of the device. The additionalConfiguration field holds further connector type specific configuration.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uuid] Globally unique, immutable, non-reusable id.
  const GetAssetEndpointProfileResult({
    this.additionalConfiguration,
    this.authentication,
    this.azureApiVersion,
    this.discoveredAssetEndpointProfileRef,
    this.endpointProfileType,
    this.extendedLocation,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.status,
    this.systemData,
    this.tags,
    this.targetAddress,
    this.type,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration,
      'authentication': ?authentication?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'discoveredAssetEndpointProfileRef': ?discoveredAssetEndpointProfileRef,
      'endpointProfileType': ?endpointProfileType,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'targetAddress': ?targetAddress,
      'type': ?type,
      'uuid': ?uuid,
    };
  }

  factory GetAssetEndpointProfileResult.fromMap(Map<String, dynamic> map) {
    return GetAssetEndpointProfileResult(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return AuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveredAssetEndpointProfileRef: (() { final guardedValue = map['discoveredAssetEndpointProfileRef']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointProfileType: (() { final guardedValue = map['endpointProfileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return AssetEndpointProfileStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetAddress: (() { final guardedValue = map['targetAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
