// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionDurableConfig {
  /// Maximum execution time in seconds for the durable function.
  final pulumi.Input<int> executionTimeout;
  /// ARN of the KMS key used to encrypt the durable function's execution state.
  final pulumi.Input<String> kmsKeyArn;
  /// Number of days to retain the function's execution state.
  final pulumi.Input<int> retentionPeriod;

  /// Creates a new [GetFunctionDurableConfig].
  /// [executionTimeout] Maximum execution time in seconds for the durable function.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the durable function's execution state.
  /// [retentionPeriod] Number of days to retain the function's execution state.
  const GetFunctionDurableConfig({
    required this.executionTimeout,
    required this.kmsKeyArn,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTimeout': executionTimeout,
      'kmsKeyArn': kmsKeyArn,
      'retentionPeriod': retentionPeriod,
    };
  }

  factory GetFunctionDurableConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionDurableConfig(
      executionTimeout: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['executionTimeout'])),
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      retentionPeriod: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retentionPeriod'])),
    );
  }
}
