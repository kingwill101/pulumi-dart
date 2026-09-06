// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getReplica.
class GetReplicaResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The URI of the replica where the replica API will be available.
  final String? endpoint;
  /// The resource ID.
  final String? id;
  /// The location of the replica.
  final String? location;
  /// The name of the replica.
  final String? name;
  /// The provisioning state of the replica.
  final String? provisioningState;
  /// Resource system metadata.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

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
    this.azureApiVersion,
    this.endpoint,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'endpoint': ?endpoint,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetReplicaResult.fromMap(Map<String, dynamic> map) {
    return GetReplicaResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
