// ignore_for_file: unused_element, unnecessary_cast


class PipelineLoggingConfig {
  /// The minimum severity of logs that will be sent to Stackdriver/Platform
  /// Telemetry. Logs at severitiy ≥ this value will be sent, unless it is NONE.
  /// Possible values are: `NONE`, `DEBUG`, `INFO`, `NOTICE`, `WARNING`, `ERROR`, `CRITICAL`, `ALERT`, `EMERGENCY`.
  final String? logSeverity;

  /// Creates a new [PipelineLoggingConfig].
  /// [logSeverity] The minimum severity of logs that will be sent to Stackdriver/Platform
  PipelineLoggingConfig({
    this.logSeverity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logSeverity': ?logSeverity,
    };
  }

  factory PipelineLoggingConfig.fromMap(Map<String, dynamic> map) {
    return PipelineLoggingConfig(
      logSeverity: map['logSeverity'] == null ? null : map['logSeverity'] as String,
    );
  }
}

