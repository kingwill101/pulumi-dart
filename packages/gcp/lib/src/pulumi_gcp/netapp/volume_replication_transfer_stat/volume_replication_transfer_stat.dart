// ignore_for_file: unused_element, unnecessary_cast

class VolumeReplicationTransferStat {
  /// (Output)
  /// The elapsed time since the creation of the snapshot on the source volume that was last replicated
  /// to the destination volume. Lag time represents the difference in age of the destination volume
  /// data in relation to the source volume data.
  final String? lagDuration;

  /// (Output)
  /// Size of last completed transfer in bytes.
  final String? lastTransferBytes;

  /// (Output)
  /// Time taken during last completed transfer.
  final String? lastTransferDuration;

  /// (Output)
  /// Time when last transfer completed. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final String? lastTransferEndTime;

  /// (Output)
  /// A message describing the cause of the last transfer failure.
  final String? lastTransferError;

  /// (Output)
  /// Cumulative time taken across all transfers for the replication relationship.
  final String? totalTransferDuration;

  /// (Output)
  /// Cumulative bytes transferred so far for the replication relationship.
  final String? transferBytes;

  /// (Output)
  /// Time when progress was updated last. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final String? updateTime;

  VolumeReplicationTransferStat({
    this.lagDuration,
    this.lastTransferBytes,
    this.lastTransferDuration,
    this.lastTransferEndTime,
    this.lastTransferError,
    this.totalTransferDuration,
    this.transferBytes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lagDurationValue = lagDuration;
    if (lagDurationValue != null) {
      map['lagDuration'] = lagDurationValue;
    }
    final lastTransferBytesValue = lastTransferBytes;
    if (lastTransferBytesValue != null) {
      map['lastTransferBytes'] = lastTransferBytesValue;
    }
    final lastTransferDurationValue = lastTransferDuration;
    if (lastTransferDurationValue != null) {
      map['lastTransferDuration'] = lastTransferDurationValue;
    }
    final lastTransferEndTimeValue = lastTransferEndTime;
    if (lastTransferEndTimeValue != null) {
      map['lastTransferEndTime'] = lastTransferEndTimeValue;
    }
    final lastTransferErrorValue = lastTransferError;
    if (lastTransferErrorValue != null) {
      map['lastTransferError'] = lastTransferErrorValue;
    }
    final totalTransferDurationValue = totalTransferDuration;
    if (totalTransferDurationValue != null) {
      map['totalTransferDuration'] = totalTransferDurationValue;
    }
    final transferBytesValue = transferBytes;
    if (transferBytesValue != null) {
      map['transferBytes'] = transferBytesValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory VolumeReplicationTransferStat.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationTransferStat(
      lagDuration:
          map['lagDuration'] == null ? null : map['lagDuration'] as String,
      lastTransferBytes: map['lastTransferBytes'] == null
          ? null
          : map['lastTransferBytes'] as String,
      lastTransferDuration: map['lastTransferDuration'] == null
          ? null
          : map['lastTransferDuration'] as String,
      lastTransferEndTime: map['lastTransferEndTime'] == null
          ? null
          : map['lastTransferEndTime'] as String,
      lastTransferError: map['lastTransferError'] == null
          ? null
          : map['lastTransferError'] as String,
      totalTransferDuration: map['totalTransferDuration'] == null
          ? null
          : map['totalTransferDuration'] as String,
      transferBytes:
          map['transferBytes'] == null ? null : map['transferBytes'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
