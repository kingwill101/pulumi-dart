// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLogConfig {
  /// Enable instance level metrics.
  final pulumi.Input<bool>? enableInstanceMetrics;

  /// Enable request level metrics.
  final pulumi.Input<bool>? enableRequestMetrics;

  /// The log store name of Alicloud Simple Log Service.
  final pulumi.Input<String> logstore;

  /// The project name of the Alicloud Simple Log Service.
  final pulumi.Input<String> project;

  /// Creates a new [ServiceLogConfig].
  /// [enableInstanceMetrics] Enable instance level metrics.
  /// [enableRequestMetrics] Enable request level metrics.
  /// [logstore] The log store name of Alicloud Simple Log Service.
  /// [project] The project name of the Alicloud Simple Log Service.
  ServiceLogConfig({
    this.enableInstanceMetrics,
    this.enableRequestMetrics,
    required this.logstore,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInstanceMetrics': ?enableInstanceMetrics,
      'enableRequestMetrics': ?enableRequestMetrics,
      'logstore': logstore,
      'project': project,
    };
  }

  factory ServiceLogConfig.fromMap(Map<String, dynamic> map) {
    return ServiceLogConfig(
      enableInstanceMetrics: (() {
        final guardedValue = map['enableInstanceMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableRequestMetrics: (() {
        final guardedValue = map['enableRequestMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
