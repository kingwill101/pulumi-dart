// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is the regional replication status.
class RegionalReplicationStatusResponse {
  /// The details of the replication status.
  final pulumi.Input<String> details;
  /// It indicates progress of the replication job.
  final pulumi.Input<int> progress;
  /// The region to which the gallery image version is being replicated to.
  final pulumi.Input<String> region;
  /// This is the regional replication state.
  final pulumi.Input<String> state;

  /// Creates a new [RegionalReplicationStatusResponse].
  /// [details] The details of the replication status.
  /// [progress] It indicates progress of the replication job.
  /// [region] The region to which the gallery image version is being replicated to.
  /// [state] This is the regional replication state.
  const RegionalReplicationStatusResponse({
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
      details: pulumi.Input.fromValue(map['details'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as int),
      region: pulumi.Input.fromValue(map['region'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
