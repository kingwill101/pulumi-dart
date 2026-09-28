// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessMemoryActualManagedMemoryConfiguration {
  /// ARN of the managed memory resource.
  final pulumi.Input<String> arn;
  /// ARN of the customer-managed KMS key used to encrypt the memory.
  final pulumi.Input<String> encryptionKeyArn;
  /// Event retention in days.
  final pulumi.Input<int> eventExpiryDuration;
  /// Set of strategy types enabled.
  final pulumi.Input<List<String>> strategies;

  /// Creates a new [AgentcoreHarnessMemoryActualManagedMemoryConfiguration].
  /// [arn] ARN of the managed memory resource.
  /// [encryptionKeyArn] ARN of the customer-managed KMS key used to encrypt the memory.
  /// [eventExpiryDuration] Event retention in days.
  /// [strategies] Set of strategy types enabled.
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
      eventExpiryDuration: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['eventExpiryDuration'])),
      strategies: pulumi.Input.fromValue((map['strategies'] as List).cast<String>()),
    );
  }
}
