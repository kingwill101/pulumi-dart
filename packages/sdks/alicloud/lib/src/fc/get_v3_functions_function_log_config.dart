// ignore_for_file: unused_element, unnecessary_cast


class GetV3FunctionsFunctionLogConfig {
  /// After this feature is enabled, you can view core metrics such as instance-level CPU usage, memory usage, instance network status, and the number of requests within an instance. false: The default value, which means that instance-level metrics are turned off. true: indicates that instance-level metrics are enabled.
  final bool enableInstanceMetrics;
  /// After this function is enabled, you can view the time and memory consumed by a call to all functions under this service. false: indicates that request-level metrics are turned off. true: The default value, indicating that request-level metrics are enabled.
  final bool enableRequestMetrics;
  /// Log Line First Matching Rules.
  final String logBeginRule;
  /// The Logstore name of log service.
  final String logstore;
  /// The name of the log service Project.
  final String project;

  /// Creates a new [GetV3FunctionsFunctionLogConfig].
  /// [enableInstanceMetrics] After this feature is enabled, you can view core metrics such as instance-level CPU usage, memory usage, instance network status, and the number of requests within an instance. false: The default value, which means that instance-level metrics are turned off. true: indicates that instance-level metrics are enabled.
  /// [enableRequestMetrics] After this function is enabled, you can view the time and memory consumed by a call to all functions under this service. false: indicates that request-level metrics are turned off. true: The default value, indicating that request-level metrics are enabled.
  /// [logBeginRule] Log Line First Matching Rules.
  /// [logstore] The Logstore name of log service.
  /// [project] The name of the log service Project.
  GetV3FunctionsFunctionLogConfig({
    required this.enableInstanceMetrics,
    required this.enableRequestMetrics,
    required this.logBeginRule,
    required this.logstore,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInstanceMetrics': enableInstanceMetrics,
      'enableRequestMetrics': enableRequestMetrics,
      'logBeginRule': logBeginRule,
      'logstore': logstore,
      'project': project,
    };
  }

  factory GetV3FunctionsFunctionLogConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionLogConfig(
      enableInstanceMetrics: map['enableInstanceMetrics'] as bool,
      enableRequestMetrics: map['enableRequestMetrics'] as bool,
      logBeginRule: map['logBeginRule'] as String,
      logstore: map['logstore'] as String,
      project: map['project'] as String,
    );
  }
}

