// ignore_for_file: unused_element, unnecessary_cast

/// The settings for a topic's message retention.
class RetentionConfig {
  /// The provisioned storage, in bytes, per partition. If the number of bytes stored in any of the topic's partitions grows beyond this value, older messages will be dropped to make room for newer ones, regardless of the value of `period`.
  final String? perPartitionBytes;

  /// How long a published message is retained. If unset, messages will be retained as long as the bytes retained for each partition is below `per_partition_bytes`.
  final String? period;

  RetentionConfig({
    this.perPartitionBytes,
    this.period,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final perPartitionBytesValue = perPartitionBytes;
    if (perPartitionBytesValue != null) {
      map['perPartitionBytes'] = perPartitionBytesValue;
    }
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    return map;
  }

  factory RetentionConfig.fromMap(Map<String, dynamic> map) {
    return RetentionConfig(
      perPartitionBytes: map['perPartitionBytes'] == null
          ? null
          : map['perPartitionBytes'] as String,
      period: map['period'] == null ? null : map['period'] as String,
    );
  }
}
