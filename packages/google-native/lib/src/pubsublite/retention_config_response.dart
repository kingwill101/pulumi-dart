// ignore_for_file: unused_element, unnecessary_cast

/// The settings for a topic's message retention.
class RetentionConfigResponse {
  /// The provisioned storage, in bytes, per partition. If the number of bytes stored in any of the topic's partitions grows beyond this value, older messages will be dropped to make room for newer ones, regardless of the value of `period`.
  final String perPartitionBytes;

  /// How long a published message is retained. If unset, messages will be retained as long as the bytes retained for each partition is below `per_partition_bytes`.
  final String period;

  /// Creates a new [RetentionConfigResponse].
  /// [perPartitionBytes] The provisioned storage, in bytes, per partition. If the number of bytes stored in any of the topic's partitions grows beyond this value, older messages will be dropped to make room for newer ones, regardless of the value of `period`.
  /// [period] How long a published message is retained. If unset, messages will be retained as long as the bytes retained for each partition is below `per_partition_bytes`.
  RetentionConfigResponse({
    required this.perPartitionBytes,
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perPartitionBytes': perPartitionBytes,
      'period': period,
    };
  }

  factory RetentionConfigResponse.fromMap(Map<String, dynamic> map) {
    return RetentionConfigResponse(
      perPartitionBytes: map['perPartitionBytes'] as String,
      period: map['period'] as String,
    );
  }
}
