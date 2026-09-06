// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_availability_group_replica_resource_properties_response.dart';

/// A list of Availability Group Replicas.
class SqlServerAvailabilityGroupResourcePropertiesResponseReplicas {
  /// Link to retrieve next page of results.
  final pulumi.Input<String> nextLink;
  /// Array of Availability Group Replicas.
  final pulumi.Input<List<SqlAvailabilityGroupReplicaResourcePropertiesResponse>?>? value;

  /// Creates a new [SqlServerAvailabilityGroupResourcePropertiesResponseReplicas].
  /// [nextLink] Link to retrieve next page of results.
  /// [value] Array of Availability Group Replicas.
  const SqlServerAvailabilityGroupResourcePropertiesResponseReplicas({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?pulumi.Input.mapOptionalInputValue<List<SqlAvailabilityGroupReplicaResourcePropertiesResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<SqlAvailabilityGroupReplicaResourcePropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SqlServerAvailabilityGroupResourcePropertiesResponseReplicas.fromMap(Map<String, dynamic> map) {
    return SqlServerAvailabilityGroupResourcePropertiesResponseReplicas(
      nextLink: pulumi.Input.fromValue(map['nextLink'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SqlAvailabilityGroupReplicaResourcePropertiesResponse>(guardedValue, (value) => SqlAvailabilityGroupReplicaResourcePropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
