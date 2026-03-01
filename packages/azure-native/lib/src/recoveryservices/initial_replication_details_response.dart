// ignore_for_file: unused_element, unnecessary_cast


/// Initial replication details.
class InitialReplicationDetailsResponse {
  /// The initial replication progress percentage.
  final String? initialReplicationProgressPercentage;
  /// Initial replication type.
  final String? initialReplicationType;

  /// Creates a new [InitialReplicationDetailsResponse].
  /// [initialReplicationProgressPercentage] The initial replication progress percentage.
  /// [initialReplicationType] Initial replication type.
  InitialReplicationDetailsResponse({
    this.initialReplicationProgressPercentage,
    this.initialReplicationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialReplicationProgressPercentage': ?initialReplicationProgressPercentage,
      'initialReplicationType': ?initialReplicationType,
    };
  }

  factory InitialReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InitialReplicationDetailsResponse(
      initialReplicationProgressPercentage: map['initialReplicationProgressPercentage'] == null ? null : map['initialReplicationProgressPercentage'] as String,
      initialReplicationType: map['initialReplicationType'] == null ? null : map['initialReplicationType'] as String,
    );
  }
}

