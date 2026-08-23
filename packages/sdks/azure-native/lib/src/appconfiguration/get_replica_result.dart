// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getReplica.
class GetReplicaResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The URI of the replica where the replica API will be available.
  final String endpoint;
  /// The resource ID.
  final String id;
  /// The location of the replica.
  final String? location;
  /// The name of the replica.
  final String name;
  /// The provisioning state of the replica.
  final String provisioningState;
  /// Resource system metadata.
  final SystemDataResponse systemData;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetReplicaResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endpoint] The URI of the replica where the replica API will be available.
  /// [id] The resource ID.
  /// [location] The location of the replica.
  /// [name] The name of the replica.
  /// [provisioningState] The provisioning state of the replica.
  /// [systemData] Resource system metadata.
  /// [type] The type of the resource.
  const GetReplicaResult({
    required this.azureApiVersion,
    required this.endpoint,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'endpoint': endpoint,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetReplicaResult.fromMap(Map<String, dynamic> map) {
    return GetReplicaResult(
      azureApiVersion: map['azureApiVersion'] as String,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
