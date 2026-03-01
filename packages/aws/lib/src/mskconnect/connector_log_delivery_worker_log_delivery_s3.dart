// ignore_for_file: unused_element, unnecessary_cast


class ConnectorLogDeliveryWorkerLogDeliveryS3 {
  /// The name of the S3 bucket that is the destination for log delivery.
  final String? bucket;
  /// Specifies whether connector logs get sent to the specified Amazon S3 destination.
  final bool enabled;
  /// The S3 prefix that is the destination for log delivery.
  final String? prefix;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryS3].
  /// [bucket] The name of the S3 bucket that is the destination for log delivery.
  /// [enabled] Specifies whether connector logs get sent to the specified Amazon S3 destination.
  /// [prefix] The S3 prefix that is the destination for log delivery.
  ConnectorLogDeliveryWorkerLogDeliveryS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory ConnectorLogDeliveryWorkerLogDeliveryS3.fromMap(Map<String, dynamic> map) {
    return ConnectorLogDeliveryWorkerLogDeliveryS3(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

