// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionDurableConfig {
  /// Maximum execution time in seconds for the durable function. Valid value between 1 and 31622400 (366 days).
  final pulumi.Input<int> executionTimeout;
  /// ARN of the KMS customer managed key used to encrypt the durable function's execution state (input, output, and error payloads). If not specified, the execution state is encrypted with an AWS managed key. Changing this value applies the new key to executions that start after the change; executions already in progress continue to use the key they started with. Note that the top-level `kmsKeyArn` argument is not used for durable function state encryption.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Number of days to retain the function's execution state. Valid value between 1 and 90. If not specified, the function's execution state is not retained. Defaults to 14.
  ///
  /// &gt; **NOTE:** When `kmsKeyArn` is set, the KMS key policy must grant the Lambda service (`lambda.amazonaws.com`) permission to use the key (`kms:Decrypt`, `kms:GenerateDataKey`, and `kms:DescribeKey`); otherwise function creation fails with a KMS `AccessDeniedException`. The key must be a symmetric encryption key in the same region as the function. The key can be changed in place after creation: the new key applies only to executions that start after the change, while executions already in progress continue to use the key they started with.
  final pulumi.Input<int?>? retentionPeriod;

  /// Creates a new [FunctionDurableConfig].
  /// [executionTimeout] Maximum execution time in seconds for the durable function. Valid value between 1 and 31622400 (366 days).
  /// [kmsKeyArn] ARN of the KMS customer managed key used to encrypt the durable function's execution state (input, output, and error payloads). If not specified, the execution state is encrypted with an AWS managed key. Changing this value applies the new key to executions that start after the change; executions already in progress continue to use the key they started with. Note that the top-level `kmsKeyArn` argument is not used for durable function state encryption.
  /// [retentionPeriod] Number of days to retain the function's execution state. Valid value between 1 and 90. If not specified, the function's execution state is not retained. Defaults to 14.
  const FunctionDurableConfig({
    required this.executionTimeout,
    this.kmsKeyArn,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTimeout': executionTimeout,
      'kmsKeyArn': ?kmsKeyArn,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory FunctionDurableConfig.fromMap(Map<String, dynamic> map) {
    return FunctionDurableConfig(
      executionTimeout: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['executionTimeout'])),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
