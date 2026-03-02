// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionLogConfig {
  /// After this feature is enabled, you can view core metrics such as instance-level CPU usage, memory usage, instance network status, and the number of requests within an instance. false: The default value, which means that instance-level metrics are turned off. true: indicates that instance-level metrics are enabled.
  final pulumi.Input<bool>? enableInstanceMetrics;
  /// After this function is enabled, you can view the time and memory consumed by a call to all functions under this service. false: indicates that request-level metrics are turned off. true: The default value, indicating that request-level metrics are enabled.
  final pulumi.Input<bool>? enableRequestMetrics;
  /// Log Line First Matching Rules
  final pulumi.Input<String>? logBeginRule;
  /// The Logstore name of log service.
  final pulumi.Input<String>? logstore;
  /// The name of the log service Project.
  final pulumi.Input<String>? project;

  /// Creates a new [V3FunctionLogConfig].
  /// [enableInstanceMetrics] After this feature is enabled, you can view core metrics such as instance-level CPU usage, memory usage, instance network status, and the number of requests within an instance. false: The default value, which means that instance-level metrics are turned off. true: indicates that instance-level metrics are enabled.
  /// [enableRequestMetrics] After this function is enabled, you can view the time and memory consumed by a call to all functions under this service. false: indicates that request-level metrics are turned off. true: The default value, indicating that request-level metrics are enabled.
  /// [logBeginRule] Log Line First Matching Rules
  /// [logstore] The Logstore name of log service.
  /// [project] The name of the log service Project.
  V3FunctionLogConfig({
    this.enableInstanceMetrics,
    this.enableRequestMetrics,
    this.logBeginRule,
    this.logstore,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInstanceMetrics': ?enableInstanceMetrics,
      'enableRequestMetrics': ?enableRequestMetrics,
      'logBeginRule': ?logBeginRule,
      'logstore': ?logstore,
      'project': ?project,
    };
  }

  factory V3FunctionLogConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionLogConfig(
      enableInstanceMetrics: map['enableInstanceMetrics'] == null ? null : (map['enableInstanceMetrics']! as bool).input(),
      enableRequestMetrics: map['enableRequestMetrics'] == null ? null : (map['enableRequestMetrics']! as bool).input(),
      logBeginRule: map['logBeginRule'] == null ? null : (map['logBeginRule']! as String).input(),
      logstore: map['logstore'] == null ? null : (map['logstore']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

