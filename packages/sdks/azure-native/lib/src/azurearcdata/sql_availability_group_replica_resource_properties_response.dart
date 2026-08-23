// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_group_configure_response.dart';
import 'availability_group_state_response.dart';

/// The properties of Arc Sql availability group replica resource
class SqlAvailabilityGroupReplicaResourcePropertiesResponse {
  /// null
  final pulumi.Input<AvailabilityGroupConfigureResponse>? configure;
  /// ID GUID of the availability group.
  final pulumi.Input<String> replicaId;
  /// The replica name.
  final pulumi.Input<String>? replicaName;
  /// Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  final pulumi.Input<String>? replicaResourceId;
  /// null
  final pulumi.Input<AvailabilityGroupStateResponse>? state;

  /// Creates a new [SqlAvailabilityGroupReplicaResourcePropertiesResponse].
  /// [configure] null
  /// [replicaId] ID GUID of the availability group.
  /// [replicaName] The replica name.
  /// [replicaResourceId] Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  /// [state] null
  const SqlAvailabilityGroupReplicaResourcePropertiesResponse({
    this.configure,
    required this.replicaId,
    this.replicaName,
    this.replicaResourceId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configure': ?pulumi.Input.mapOptionalInputValue<AvailabilityGroupConfigureResponse, Map<String, dynamic>>(configure, (value) => value.toMap()),
      'replicaId': replicaId,
      'replicaName': ?replicaName,
      'replicaResourceId': ?replicaResourceId,
      'state': ?pulumi.Input.mapOptionalInputValue<AvailabilityGroupStateResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory SqlAvailabilityGroupReplicaResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupReplicaResourcePropertiesResponse(
      configure: (() { final guardedValue = map['configure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityGroupConfigureResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicaId: pulumi.Input.fromValue(map['replicaId'] as String),
      replicaName: (() { final guardedValue = map['replicaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaResourceId: (() { final guardedValue = map['replicaResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvailabilityGroupStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
