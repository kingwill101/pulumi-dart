// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data used when creating a volume snapshot.
class SnapshotCreationData {
  /// Fully qualified resource ID of the volume. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}"
  final pulumi.Input<String> sourceId;

  /// Creates a new [SnapshotCreationData].
  /// [sourceId] Fully qualified resource ID of the volume. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}"
  const SnapshotCreationData({
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceId': sourceId,
    };
  }

  factory SnapshotCreationData.fromMap(Map<String, dynamic> map) {
    return SnapshotCreationData(
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}

