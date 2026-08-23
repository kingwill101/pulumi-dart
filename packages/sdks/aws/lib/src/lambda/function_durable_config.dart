// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionDurableConfig {
  /// Maximum execution time in seconds for the durable function. Valid value between 1 and 31622400 (366 days).
  final pulumi.Input<int> executionTimeout;
  /// Number of days to retain the function's execution state. Valid value between 1 and 90. If not specified, the function's execution state is not retained. Defaults to 14.
  final pulumi.Input<int>? retentionPeriod;

  /// Creates a new [FunctionDurableConfig].
  /// [executionTimeout] Maximum execution time in seconds for the durable function. Valid value between 1 and 31622400 (366 days).
  /// [retentionPeriod] Number of days to retain the function's execution state. Valid value between 1 and 90. If not specified, the function's execution state is not retained. Defaults to 14.
  const FunctionDurableConfig({
    required this.executionTimeout,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTimeout': executionTimeout,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory FunctionDurableConfig.fromMap(Map<String, dynamic> map) {
    return FunctionDurableConfig(
      executionTimeout: pulumi.Input.fromValue(map['executionTimeout'] as int),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
