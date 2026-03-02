// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_database_replica_resource_properties.dart';

/// A list of Availability Group Database Replicas.
class SqlServerAvailabilityGroupResourcePropertiesDatabases {
  /// Array of Availability Group Database Replicas.
  final pulumi.Input<List<SqlAvailabilityGroupDatabaseReplicaResourceProperties>>? value;

  /// Creates a new [SqlServerAvailabilityGroupResourcePropertiesDatabases].
  /// [value] Array of Availability Group Database Replicas.
  SqlServerAvailabilityGroupResourcePropertiesDatabases({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<List<SqlAvailabilityGroupDatabaseReplicaResourceProperties>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<SqlAvailabilityGroupDatabaseReplicaResourceProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesDatabases.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesDatabases(
      value: map['value'] == null ? null : (pulumi.Input.decodeList<SqlAvailabilityGroupDatabaseReplicaResourceProperties>(map['value']!, (value) => SqlAvailabilityGroupDatabaseReplicaResourceProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

