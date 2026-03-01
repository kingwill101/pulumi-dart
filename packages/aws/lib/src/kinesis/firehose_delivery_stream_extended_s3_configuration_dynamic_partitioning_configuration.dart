// ignore_for_file: unused_element, unnecessary_cast

class FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration {
  /// Enables or disables dynamic partitioning. Defaults to `false`.
  final bool? enabled;

  /// Total amount of seconds Firehose spends on retries. Valid values between 0 and 7200. Default is 300.
  ///
  /// > **NOTE:** You can enable dynamic partitioning only when you create a new delivery stream. Once you enable dynamic partitioning on a delivery stream, it cannot be disabled on this delivery stream. Therefore, the provider will recreate the resource whenever dynamic partitioning is enabled or disabled.
  final int? retryDuration;

  /// Creates a new [FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration].
  /// [enabled] Enables or disables dynamic partitioning. Defaults to `false`.
  /// [retryDuration] Total amount of seconds Firehose spends on retries. Valid values between 0 and 7200. Default is 300.
  FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration({
    this.enabled,
    this.retryDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'retryDuration': ?retryDuration,
    };
  }

  factory FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirehoseDeliveryStreamExtendedS3ConfigurationDynamicPartitioningConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      retryDuration: map['retryDuration'] == null
          ? null
          : map['retryDuration'] as int,
    );
  }
}
