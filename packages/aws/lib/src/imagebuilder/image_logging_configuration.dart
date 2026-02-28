// ignore_for_file: unused_element, unnecessary_cast

class ImageLoggingConfiguration {
  /// Name of the CloudWatch Log Group to send logs to.
  final String logGroupName;

  /// Creates a new [ImageLoggingConfiguration].
  /// [logGroupName] Name of the CloudWatch Log Group to send logs to.
  ImageLoggingConfiguration({
    required this.logGroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupName'] = logGroupName;
    return map;
  }

  factory ImageLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return ImageLoggingConfiguration(
      logGroupName: map['logGroupName'] as String,
    );
  }
}
