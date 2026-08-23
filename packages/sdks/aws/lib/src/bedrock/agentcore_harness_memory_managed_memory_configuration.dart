// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessMemoryManagedMemoryConfiguration {
  /// ARN of the managed memory resource.
  final pulumi.Input<String>? arn;
  /// ARN of a customer-managed KMS key used to encrypt the memory. Defaults to an AWS-owned key. Cannot be changed after creation.
  final pulumi.Input<String>? encryptionKeyArn;
  /// Event retention in days. Defaults to `30`.
  final pulumi.Input<int>? eventExpiryDuration;
  /// Set of strategy types to enable. Valid values are `SEMANTIC`, `SUMMARIZATION`, and `USER_PREFERENCE`. Defaults to `["SEMANTIC", "SUMMARIZATION"]`.
  ///
  /// In addition, the following attribute is exported:
  final pulumi.Input<List<String>>? strategies;

  /// Creates a new [AgentcoreHarnessMemoryManagedMemoryConfiguration].
  /// [arn] ARN of the managed memory resource.
  /// [encryptionKeyArn] ARN of a customer-managed KMS key used to encrypt the memory. Defaults to an AWS-owned key. Cannot be changed after creation.
  /// [eventExpiryDuration] Event retention in days. Defaults to `30`.
  /// [strategies] Set of strategy types to enable. Valid values are `SEMANTIC`, `SUMMARIZATION`, and `USER_PREFERENCE`. Defaults to `["SEMANTIC", "SUMMARIZATION"]`.
  const AgentcoreHarnessMemoryManagedMemoryConfiguration({
    this.arn,
    this.encryptionKeyArn,
    this.eventExpiryDuration,
    this.strategies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'encryptionKeyArn': ?encryptionKeyArn,
      'eventExpiryDuration': ?eventExpiryDuration,
      'strategies': ?strategies,
    };
  }

  factory AgentcoreHarnessMemoryManagedMemoryConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessMemoryManagedMemoryConfiguration(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventExpiryDuration: (() { final guardedValue = map['eventExpiryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      strategies: (() { final guardedValue = map['strategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
