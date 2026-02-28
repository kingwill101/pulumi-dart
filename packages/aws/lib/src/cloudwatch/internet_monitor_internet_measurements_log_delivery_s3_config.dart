// ignore_for_file: unused_element, unnecessary_cast

class InternetMonitorInternetMeasurementsLogDeliveryS3Config {
  final String bucketName;
  final String? bucketPrefix;
  final String? logDeliveryStatus;

  /// Creates a new [InternetMonitorInternetMeasurementsLogDeliveryS3Config].
  /// [bucketName] Required.
  /// [bucketPrefix] Optional.
  /// [logDeliveryStatus] Optional.
  InternetMonitorInternetMeasurementsLogDeliveryS3Config({
    required this.bucketName,
    this.bucketPrefix,
    this.logDeliveryStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final bucketPrefixValue = bucketPrefix;
    if (bucketPrefixValue != null) {
      map['bucketPrefix'] = bucketPrefixValue;
    }
    final logDeliveryStatusValue = logDeliveryStatus;
    if (logDeliveryStatusValue != null) {
      map['logDeliveryStatus'] = logDeliveryStatusValue;
    }
    return map;
  }

  factory InternetMonitorInternetMeasurementsLogDeliveryS3Config.fromMap(
      Map<String, dynamic> map) {
    return InternetMonitorInternetMeasurementsLogDeliveryS3Config(
      bucketName: map['bucketName'] as String,
      bucketPrefix:
          map['bucketPrefix'] == null ? null : map['bucketPrefix'] as String,
      logDeliveryStatus: map['logDeliveryStatus'] == null
          ? null
          : map['logDeliveryStatus'] as String,
    );
  }
}
