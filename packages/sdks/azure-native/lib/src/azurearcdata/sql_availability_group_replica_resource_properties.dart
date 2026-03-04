// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_group_configure.dart';

/// The properties of Arc Sql availability group replica resource
class SqlAvailabilityGroupReplicaResourceProperties {
  /// null
  final pulumi.Input<AvailabilityGroupConfigure>? configure;

  /// The replica name.
  final pulumi.Input<String>? replicaName;

  /// Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  final pulumi.Input<String>? replicaResourceId;

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
      'configure':
          ?pulumi.Input.mapOptionalInputValue<
            AvailabilityGroupConfigure,
            Map<String, dynamic>
          >(configure, (value) => value.toMap()),
      'replicaName': ?replicaName,
      'replicaResourceId': ?replicaResourceId,
    };
  }

  factory SqlAvailabilityGroupReplicaResourceProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlAvailabilityGroupReplicaResourceProperties(
      configure: (() {
        final guardedValue = map['configure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AvailabilityGroupConfigure.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replicaName: (() {
        final guardedValue = map['replicaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaResourceId: (() {
        final guardedValue = map['replicaResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
