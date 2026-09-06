// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digital_twins_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDigitalTwin.
class GetDigitalTwinResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Time when DigitalTwinsInstance was created.
  final String? createdTime;
  /// Api endpoint to work with DigitalTwinsInstance.
  final String? hostName;
  /// The resource identifier.
  final String? id;
  /// The managed identity for the DigitalTwinsInstance.
  final DigitalTwinsIdentityResponse? identity;
  /// Time when DigitalTwinsInstance was updated.
  final String? lastUpdatedTime;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// The private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioning state.
  final String? provisioningState;
  /// Public network access for the DigitalTwinsInstance.
  final String? publicNetworkAccess;
  /// Metadata pertaining to creation and last modification of the DigitalTwinsInstance.
  final SystemDataResponse? systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String? type;

  /// Creates a new [GetDigitalTwinResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTime] Time when DigitalTwinsInstance was created.
  /// [hostName] Api endpoint to work with DigitalTwinsInstance.
  /// [id] The resource identifier.
  /// [identity] The managed identity for the DigitalTwinsInstance.
  /// [lastUpdatedTime] Time when DigitalTwinsInstance was updated.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [privateEndpointConnections] The private endpoint connections.
  /// [provisioningState] The provisioning state.
  /// [publicNetworkAccess] Public network access for the DigitalTwinsInstance.
  /// [systemData] Metadata pertaining to creation and last modification of the DigitalTwinsInstance.
  /// [tags] The resource tags.
  /// [type] The resource type.
  const GetDigitalTwinResult({
    this.azureApiVersion,
    this.createdTime,
    this.hostName,
    this.id,
    this.identity,
    this.lastUpdatedTime,
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdTime': ?createdTime,
      'hostName': ?hostName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'lastUpdatedTime': ?lastUpdatedTime,
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDigitalTwinResult.fromMap(Map<String, dynamic> map) {
    return GetDigitalTwinResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return DigitalTwinsIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
