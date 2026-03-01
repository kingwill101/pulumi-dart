// ignore_for_file: unused_element, unnecessary_cast

import 'availability_group_configure.dart';

/// The properties of Arc Sql availability group replica resource
class SqlAvailabilityGroupReplicaResourceProperties {
  /// null
  final AvailabilityGroupConfigure? configure;
  /// The replica name.
  final String? replicaName;
  /// Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  final String? replicaResourceId;

  /// Creates a new [SqlAvailabilityGroupReplicaResourceProperties].
  /// [configure] null
  /// [replicaName] The replica name.
  /// [replicaResourceId] Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  SqlAvailabilityGroupReplicaResourceProperties({
    this.configure,
    this.replicaName,
    this.replicaResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configure': ?configure == null ? null : configure!.toMap(),
      'replicaName': ?replicaName,
      'replicaResourceId': ?replicaResourceId,
    };
  }

  factory SqlAvailabilityGroupReplicaResourceProperties.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupReplicaResourceProperties(
      configure: map['configure'] == null ? null : AvailabilityGroupConfigure.fromMap((map['configure'] as Map).cast<String, dynamic>()),
      replicaName: map['replicaName'] == null ? null : map['replicaName'] as String,
      replicaResourceId: map['replicaResourceId'] == null ? null : map['replicaResourceId'] as String,
    );
  }
}

