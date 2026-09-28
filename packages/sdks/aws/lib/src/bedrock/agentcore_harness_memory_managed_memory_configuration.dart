// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessMemoryManagedMemoryConfiguration {
  /// ARN of the managed memory resource.
  final pulumi.Input<String?>? arn;
  /// ARN of the customer-managed KMS key used to encrypt the memory.
  final pulumi.Input<String?>? encryptionKeyArn;
  /// Event retention in days.
  final pulumi.Input<int?>? eventExpiryDuration;
  /// Set of strategy types enabled.
  final pulumi.Input<List<String>?>? strategies;

  /// Creates a new [AgentcoreHarnessMemoryManagedMemoryConfiguration].
  /// [arn] ARN of the managed memory resource.
  /// [encryptionKeyArn] ARN of the customer-managed KMS key used to encrypt the memory.
  /// [eventExpiryDuration] Event retention in days.
  /// [strategies] Set of strategy types enabled.
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
      eventExpiryDuration: (() { final guardedValue = map['eventExpiryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      strategies: (() { final guardedValue = map['strategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
