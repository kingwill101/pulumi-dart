// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_replica_resource_properties.dart';

/// A list of Availability Group Replicas.
class SqlServerAvailabilityGroupResourcePropertiesReplicas {
  /// Array of Availability Group Replicas.
  final pulumi.Input<List<SqlAvailabilityGroupReplicaResourceProperties>>? value;

  /// Creates a new [SqlServerAvailabilityGroupResourcePropertiesReplicas].
  /// [value] Array of Availability Group Replicas.
  const SqlServerAvailabilityGroupResourcePropertiesReplicas({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?pulumi.Input.mapOptionalInputValue<List<SqlAvailabilityGroupReplicaResourceProperties>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<SqlAvailabilityGroupReplicaResourceProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesReplicas.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesReplicas(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlAvailabilityGroupReplicaResourceProperties>(guardedValue, (value) => SqlAvailabilityGroupReplicaResourceProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

