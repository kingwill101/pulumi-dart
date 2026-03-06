// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_database_replica_resource_properties_response.dart';

/// A list of Availability Group Database Replicas.
class SqlServerAvailabilityGroupResourcePropertiesResponseDatabases {
  /// Link to retrieve next page of results.
  final pulumi.Input<String> nextLink;
  /// Array of Availability Group Database Replicas.
  final pulumi.Input<List<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse>>? value;

  /// Creates a new [SqlServerAvailabilityGroupResourcePropertiesResponseDatabases].
  /// [nextLink] Link to retrieve next page of results.
  /// [value] Array of Availability Group Database Replicas.
  const SqlServerAvailabilityGroupResourcePropertiesResponseDatabases({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?pulumi.Input.mapOptionalInputValue<List<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesResponseDatabases.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesResponseDatabases(
      nextLink: pulumi.Input.fromValue(map['nextLink'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse>(guardedValue, (value) => SqlAvailabilityGroupDatabaseReplicaResourcePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

