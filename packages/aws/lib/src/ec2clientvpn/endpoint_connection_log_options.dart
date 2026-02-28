// ignore_for_file: unused_element, unnecessary_cast

class EndpointConnectionLogOptions {
  /// The name of the CloudWatch Logs log group.
  final String? cloudwatchLogGroup;

  /// The name of the CloudWatch Logs log stream to which the connection data is published.
  final String? cloudwatchLogStream;

  /// Indicates whether connection logging is enabled.
  final bool enabled;

  /// Creates a new [EndpointConnectionLogOptions].
  /// [cloudwatchLogGroup] The name of the CloudWatch Logs log group.
  /// [cloudwatchLogStream] The name of the CloudWatch Logs log stream to which the connection data is published.
  /// [enabled] Indicates whether connection logging is enabled.
  EndpointConnectionLogOptions({
    this.cloudwatchLogGroup,
    this.cloudwatchLogStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogGroupValue = cloudwatchLogGroup;
    if (cloudwatchLogGroupValue != null) {
      map['cloudwatchLogGroup'] = cloudwatchLogGroupValue;
    }
    final cloudwatchLogStreamValue = cloudwatchLogStream;
    if (cloudwatchLogStreamValue != null) {
      map['cloudwatchLogStream'] = cloudwatchLogStreamValue;
    }
    map['enabled'] = enabled;
    return map;
  }

  factory EndpointConnectionLogOptions.fromMap(Map<String, dynamic> map) {
    return EndpointConnectionLogOptions(
      cloudwatchLogGroup: map['cloudwatchLogGroup'] == null
          ? null
          : map['cloudwatchLogGroup'] as String,
      cloudwatchLogStream: map['cloudwatchLogStream'] == null
          ? null
          : map['cloudwatchLogStream'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
