// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'digital_twins_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDigitalTwin.
class GetDigitalTwinResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time when DigitalTwinsInstance was created.
  final String createdTime;
  /// Api endpoint to work with DigitalTwinsInstance.
  final String hostName;
  /// The resource identifier.
  final String id;
  /// The managed identity for the DigitalTwinsInstance.
  final DigitalTwinsIdentityResponse? identity;
  /// Time when DigitalTwinsInstance was updated.
  final String lastUpdatedTime;
  /// The resource location.
  final String location;
  /// The resource name.
  final String name;
  /// The private endpoint connections.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioning state.
  final String provisioningState;
  /// Public network access for the DigitalTwinsInstance.
  final String? publicNetworkAccess;
  /// Metadata pertaining to creation and last modification of the DigitalTwinsInstance.
  final SystemDataResponse systemData;
  /// The resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

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
    required this.azureApiVersion,
    required this.createdTime,
    required this.hostName,
    required this.id,
    this.identity,
    required this.lastUpdatedTime,
    required this.location,
    required this.name,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdTime': createdTime,
      'hostName': hostName,
      'id': id,
      'identity': ?identity?.toMap(),
      'lastUpdatedTime': lastUpdatedTime,
      'location': location,
      'name': name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDigitalTwinResult.fromMap(Map<String, dynamic> map) {
    return GetDigitalTwinResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdTime: map['createdTime'] as String,
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return DigitalTwinsIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

