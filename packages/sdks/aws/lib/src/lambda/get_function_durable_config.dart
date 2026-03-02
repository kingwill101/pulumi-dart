// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionDurableConfig {
  /// Maximum execution time in seconds for the durable function.
  final pulumi.Input<int> executionTimeout;
  /// Number of days to retain the function's execution state.
  final pulumi.Input<int> retentionPeriod;

  /// Creates a new [GetFunctionDurableConfig].
  /// [executionTimeout] Maximum execution time in seconds for the durable function.
  /// [retentionPeriod] Number of days to retain the function's execution state.
  GetFunctionDurableConfig({
    required this.executionTimeout,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTimeout': executionTimeout,
      'retentionPeriod': retentionPeriod,
    };
  }

  factory GetFunctionDurableConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionDurableConfig(
      executionTimeout: (map['executionTimeout'] as int).input(),
      retentionPeriod: (map['retentionPeriod'] as int).input(),
    );
  }
}

