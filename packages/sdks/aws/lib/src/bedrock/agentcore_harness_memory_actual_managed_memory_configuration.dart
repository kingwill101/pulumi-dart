// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessMemoryActualManagedMemoryConfiguration {
  /// ARN of the managed memory resource.
  final pulumi.Input<String> arn;
  /// ARN of a customer-managed KMS key used to encrypt the memory. Defaults to an AWS-owned key. Cannot be changed after creation.
  final pulumi.Input<String> encryptionKeyArn;
  /// Event retention in days. Defaults to `30`.
  final pulumi.Input<int> eventExpiryDuration;
  /// Set of strategy types to enable. Valid values are `SEMANTIC`, `SUMMARIZATION`, and `USER_PREFERENCE`. Defaults to `["SEMANTIC", "SUMMARIZATION"]`.
  ///
  /// In addition, the following attribute is exported:
  final pulumi.Input<List<String>> strategies;

  /// Creates a new [AgentcoreHarnessMemoryActualManagedMemoryConfiguration].
  /// [arn] ARN of the managed memory resource.
  /// [encryptionKeyArn] ARN of a customer-managed KMS key used to encrypt the memory. Defaults to an AWS-owned key. Cannot be changed after creation.
  /// [eventExpiryDuration] Event retention in days. Defaults to `30`.
  /// [strategies] Set of strategy types to enable. Valid values are `SEMANTIC`, `SUMMARIZATION`, and `USER_PREFERENCE`. Defaults to `["SEMANTIC", "SUMMARIZATION"]`.
  const AgentcoreHarnessMemoryActualManagedMemoryConfiguration({
    required this.arn,
    required this.encryptionKeyArn,
    required this.eventExpiryDuration,
    required this.strategies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'encryptionKeyArn': encryptionKeyArn,
      'eventExpiryDuration': eventExpiryDuration,
      'strategies': strategies,
    };
  }

  factory AgentcoreHarnessMemoryActualManagedMemoryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryActualManagedMemoryConfiguration(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      encryptionKeyArn: pulumi.Input.fromValue(map['encryptionKeyArn'] as String),
      eventExpiryDuration: pulumi.Input.fromValue((map['eventExpiryDuration'] as num).toInt()),
      strategies: pulumi.Input.fromValue((map['strategies'] as List).cast<String>()),
    );
  }
}
