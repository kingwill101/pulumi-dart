// ignore_for_file: unused_element, unnecessary_cast

import 'availability_group_configure_response.dart';
import 'availability_group_state_response.dart';

/// The properties of Arc Sql availability group replica resource
class SqlAvailabilityGroupReplicaResourcePropertiesResponse {
  /// null
  final AvailabilityGroupConfigureResponse? configure;
  /// ID GUID of the availability group.
  final String replicaId;
  /// The replica name.
  final String? replicaName;
  /// Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  final String? replicaResourceId;
  /// null
  final AvailabilityGroupStateResponse? state;

  /// Creates a new [SqlAvailabilityGroupReplicaResourcePropertiesResponse].
  /// [configure] null
  /// [replicaId] ID GUID of the availability group.
  /// [replicaName] The replica name.
  /// [replicaResourceId] Resource id of this replica. This is required for a distributed availability group, in which case it describes the location of the availability group that hosts one replica in the DAG. In a non-distributed availability group this field is optional but can be used to store the Azure resource id for AG.
  /// [state] null
  SqlAvailabilityGroupReplicaResourcePropertiesResponse({
    this.configure,
    required this.replicaId,
    this.replicaName,
    this.replicaResourceId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configure': ?configure == null ? null : configure!.toMap(),
      'replicaId': replicaId,
      'replicaName': ?replicaName,
      'replicaResourceId': ?replicaResourceId,
      'state': ?state == null ? null : state!.toMap(),
    };
  }

  factory SqlAvailabilityGroupReplicaResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupReplicaResourcePropertiesResponse(
      configure: map['configure'] == null ? null : AvailabilityGroupConfigureResponse.fromMap((map['configure'] as Map).cast<String, dynamic>()),
      replicaId: map['replicaId'] as String,
      replicaName: map['replicaName'] == null ? null : map['replicaName'] as String,
      replicaResourceId: map['replicaResourceId'] == null ? null : map['replicaResourceId'] as String,
      state: map['state'] == null ? null : AvailabilityGroupStateResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
    );
  }
}

