// ignore_for_file: unused_element, unnecessary_cast

import 'data_center_resource_response_properties.dart';

/// Result data returned by getCassandraDataCenter.
class GetCassandraDataCenterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unique resource identifier of the database account.
  final String id;
  /// The name of the database account.
  final String name;
  /// Properties of a managed Cassandra data center.
  final DataCenterResourceResponseProperties properties;
  /// The type of Azure resource.
  final String type;

  /// Creates a new [GetCassandraDataCenterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The unique resource identifier of the database account.
  /// [name] The name of the database account.
  /// [properties] Properties of a managed Cassandra data center.
  /// [type] The type of Azure resource.
  GetCassandraDataCenterResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetCassandraDataCenterResult.fromMap(Map<String, dynamic> map) {
    return GetCassandraDataCenterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: DataCenterResourceResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

