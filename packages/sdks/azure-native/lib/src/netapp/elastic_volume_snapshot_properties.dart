// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Volume Snapshot Properties
class ElasticVolumeSnapshotProperties {
  /// Snapshot Policy ResourceId
  final pulumi.Input<String>? snapshotPolicyResourceId;

  /// Creates a new [ElasticVolumeSnapshotProperties].
  /// [snapshotPolicyResourceId] Snapshot Policy ResourceId
  ElasticVolumeSnapshotProperties({
    this.snapshotPolicyResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyResourceId': ?snapshotPolicyResourceId,
    };
  }

  factory ElasticVolumeSnapshotProperties.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeSnapshotProperties(
      snapshotPolicyResourceId: map['snapshotPolicyResourceId'] == null ? null : (map['snapshotPolicyResourceId'] as String).input(),
    );
  }
}

