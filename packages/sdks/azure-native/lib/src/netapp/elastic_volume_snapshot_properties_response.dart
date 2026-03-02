// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Elastic Volume Snapshot Properties
class ElasticVolumeSnapshotPropertiesResponse {
  /// Snapshot Policy ResourceId
  final pulumi.Input<String>? snapshotPolicyResourceId;

  /// Creates a new [ElasticVolumeSnapshotPropertiesResponse].
  /// [snapshotPolicyResourceId] Snapshot Policy ResourceId
  ElasticVolumeSnapshotPropertiesResponse({
    this.snapshotPolicyResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snapshotPolicyResourceId': ?snapshotPolicyResourceId,
    };
  }

  factory ElasticVolumeSnapshotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticVolumeSnapshotPropertiesResponse(
      snapshotPolicyResourceId: map['snapshotPolicyResourceId'] == null ? null : (map['snapshotPolicyResourceId'] as String).input(),
    );
  }
}

