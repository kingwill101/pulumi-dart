// ignore_for_file: unused_element, unnecessary_cast

import 'policy_properties_response.dart';

/// Result data returned by getReplicationPolicy.
class GetReplicationPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource Location
  final String? location;
  /// Resource Name
  final String name;
  /// The custom data.
  final PolicyPropertiesResponse properties;
  /// Resource Type
  final String type;

  /// Creates a new [GetReplicationPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [location] Resource Location
  /// [name] Resource Name
  /// [properties] The custom data.
  /// [type] Resource Type
  GetReplicationPolicyResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetReplicationPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      properties: PolicyPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

