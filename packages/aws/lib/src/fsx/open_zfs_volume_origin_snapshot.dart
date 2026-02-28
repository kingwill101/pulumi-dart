// ignore_for_file: unused_element, unnecessary_cast


class OpenZfsVolumeOriginSnapshot {
  /// Specifies the strategy used when copying data from the snapshot to the new volume. Valid values are `CLONE`, `FULL_COPY`, `INCREMENTAL_COPY`.
  final String copyStrategy;
  /// The Amazon Resource Name (ARN) of the origin snapshot.
  final String snapshotArn;

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
      copyStrategy: map['copyStrategy'] as String,
      snapshotArn: map['snapshotArn'] as String,
    );
  }
}

