// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_database_replica_resource_properties_response.dart';

/// A list of Availability Group Database Replicas.
class SqlServerAvailabilityGroupResourcePropertiesResponseDatabases {
  /// Link to retrieve next page of results.
  final String nextLink;
  /// Array of Availability Group Database Replicas.
  final List<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse>? value;

  /// Creates a new [SqlServerAvailabilityGroupResourcePropertiesResponseDatabases].
  /// [nextLink] Link to retrieve next page of results.
  /// [value] Array of Availability Group Database Replicas.
  SqlServerAvailabilityGroupResourcePropertiesResponseDatabases({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesResponseDatabases.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesResponseDatabases(
      nextLink: map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse>(map['value'], (value) => SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

