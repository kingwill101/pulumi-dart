// ignore_for_file: unused_element, unnecessary_cast


/// This is the regional replication status.
class RegionalReplicationStatusResponse {
  /// The details of the replication status.
  final String details;
  /// It indicates progress of the replication job.
  final int progress;
  /// The region to which the gallery image version is being replicated to.
  final String region;
  /// This is the regional replication state.
  final String state;

  /// Creates a new [RegionalReplicationStatusResponse].
  /// [details] The details of the replication status.
  /// [progress] It indicates progress of the replication job.
  /// [region] The region to which the gallery image version is being replicated to.
  /// [state] This is the regional replication state.
  RegionalReplicationStatusResponse({
    required this.details,
    required this.progress,
    required this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'progress': progress,
      'region': region,
      'state': state,
    };
  }

  factory RegionalReplicationStatusResponse.fromMap(Map<String, dynamic> map) {
    return RegionalReplicationStatusResponse(
      details: map['details'] as String,
      progress: map['progress'] as int,
      region: map['region'] as String,
      state: map['state'] as String,
    );
  }
}

