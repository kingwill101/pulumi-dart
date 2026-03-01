// ignore_for_file: unused_element, unnecessary_cast

class MessageBusLoggingConfig {
  /// Optional. The minimum severity of logs that will be sent to Stackdriver/Platform
  /// Telemetry. Logs at severitiy ≥ this value will be sent, unless it is NONE.
  /// Possible values are: `NONE`, `DEBUG`, `INFO`, `NOTICE`, `WARNING`, `ERROR`, `CRITICAL`, `ALERT`, `EMERGENCY`.
  final String? logSeverity;

  /// Creates a new [MessageBusLoggingConfig].
  /// [logSeverity] Optional. The minimum severity of logs that will be sent to Stackdriver/Platform
  MessageBusLoggingConfig({this.logSeverity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logSeverity': ?logSeverity};
  }

  factory MessageBusLoggingConfig.fromMap(Map<String, dynamic> map) {
    return MessageBusLoggingConfig(
      logSeverity: map['logSeverity'] == null
          ? null
          : map['logSeverity'] as String,
    );
  }
}
