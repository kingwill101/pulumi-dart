// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenZfsVolumeOriginSnapshot {
  /// Specifies the strategy used when copying data from the snapshot to the new volume. Valid values are `CLONE`, `FULL_COPY`, `INCREMENTAL_COPY`.
  final pulumi.Input<String> copyStrategy;

  /// The Amazon Resource Name (ARN) of the origin snapshot.
  final pulumi.Input<String> snapshotArn;

  /// Creates a new [OpenZfsVolumeOriginSnapshot].
  /// [copyStrategy] Specifies the strategy used when copying data from the snapshot to the new volume. Valid values are `CLONE`, `FULL_COPY`, `INCREMENTAL_COPY`.
  /// [snapshotArn] The Amazon Resource Name (ARN) of the origin snapshot.
  OpenZfsVolumeOriginSnapshot({
    required this.copyStrategy,
    required this.snapshotArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyStrategy': copyStrategy,
      'snapshotArn': snapshotArn,
    };
  }

  factory OpenZfsVolumeOriginSnapshot.fromMap(Map<String, dynamic> map) {
    return OpenZfsVolumeOriginSnapshot(
      copyStrategy: pulumi.Input.fromValue(map['copyStrategy'] as String),
      snapshotArn: pulumi.Input.fromValue(map['snapshotArn'] as String),
    );
  }
}
