// ignore_for_file: unused_element, unnecessary_cast

class ListingBigqueryDatasetEffectiveReplica {
  /// The name of the location this data exchange listing.
  final String? location;

  /// Output-only. Indicates that this replica is the primary replica.
  /// Possible values: PRIMARY_STATE_UNSPECIFIED, PRIMARY_REPLICA
  final String? primaryState;

  /// Output-only. Assigned by Analytics Hub based on real BigQuery replication state.
  /// Possible values: REPLICA_STATE_UNSPECIFIED, READY_TO_USE, UNAVAILABLE
  final String? replicaState;

  /// Creates a new [ListingBigqueryDatasetEffectiveReplica].
  /// [location] The name of the location this data exchange listing.
  /// [primaryState] Output-only. Indicates that this replica is the primary replica.
  /// [replicaState] Output-only. Assigned by Analytics Hub based on real BigQuery replication state.
  ListingBigqueryDatasetEffectiveReplica({
    this.location,
    this.primaryState,
    this.replicaState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final primaryStateValue = primaryState;
    if (primaryStateValue != null) {
      map['primaryState'] = primaryStateValue;
    }
    final replicaStateValue = replicaState;
    if (replicaStateValue != null) {
      map['replicaState'] = replicaStateValue;
    }
    return map;
  }

  factory ListingBigqueryDatasetEffectiveReplica.fromMap(
      Map<String, dynamic> map) {
    return ListingBigqueryDatasetEffectiveReplica(
      location: map['location'] == null ? null : map['location'] as String,
      primaryState:
          map['primaryState'] == null ? null : map['primaryState'] as String,
      replicaState:
          map['replicaState'] == null ? null : map['replicaState'] as String,
    );
  }
}
