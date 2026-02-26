// ignore_for_file: unused_element, unnecessary_cast

class LiteTopicRetentionConfig {
  /// The provisioned storage, in bytes, per partition. If the number of bytes stored
  /// in any of the topic's partitions grows beyond this value, older messages will be
  /// dropped to make room for newer ones, regardless of the value of period.
  final String perPartitionBytes;

  /// How long a published message is retained. If unset, messages will be retained as
  /// long as the bytes retained for each partition is below perPartitionBytes. A
  /// duration in seconds with up to nine fractional digits, terminated by 's'.
  /// Example: "3.5s".
  final String? period;

  LiteTopicRetentionConfig({
    required this.perPartitionBytes,
    this.period,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['perPartitionBytes'] = perPartitionBytes;
    final periodValue = period;
    if (periodValue != null) {
      map['period'] = periodValue;
    }
    return map;
  }

  factory LiteTopicRetentionConfig.fromMap(Map<String, dynamic> map) {
    return LiteTopicRetentionConfig(
      perPartitionBytes: map['perPartitionBytes'] as String,
      period: map['period'] == null ? null : map['period'] as String,
    );
  }
}
