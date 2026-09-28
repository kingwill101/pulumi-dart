// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_table_entry_policy_rule_metadata.dart';

class PolicyTableEntryPolicyRule {
  /// Destination CIDR block to match. If not specified, all destination CIDR blocks are matched.
  final pulumi.Input<String?>? destinationCidrBlock;
  /// Destination port or port range to match (e.g., `443` or `1024-65535`). Only valid when `protocol` is `6` (TCP) or `17` (UDP).
  final pulumi.Input<String?>? destinationPortRange;
  /// Metadata key/value tag associated with the policy rule. See below.
  final pulumi.Input<PolicyTableEntryPolicyRuleMetadata?>? metadata;
  /// Protocol number to match (e.g., `6` for TCP, `17` for UDP). If not specified, all protocols are matched.
  final pulumi.Input<String?>? protocol;
  /// Source CIDR block to match. If not specified, all source CIDR blocks are matched.
  final pulumi.Input<String?>? sourceCidrBlock;
  /// Source port or port range to match (e.g., `443` or `1024-65535`). Only valid when `protocol` is `6` (TCP) or `17` (UDP).
  final pulumi.Input<String?>? sourcePortRange;

  /// Creates a new [PolicyTableEntryPolicyRule].
  /// [destinationCidrBlock] Destination CIDR block to match. If not specified, all destination CIDR blocks are matched.
  /// [destinationPortRange] Destination port or port range to match (e.g., `443` or `1024-65535`). Only valid when `protocol` is `6` (TCP) or `17` (UDP).
  /// [metadata] Metadata key/value tag associated with the policy rule. See below.
  /// [protocol] Protocol number to match (e.g., `6` for TCP, `17` for UDP). If not specified, all protocols are matched.
  /// [sourceCidrBlock] Source CIDR block to match. If not specified, all source CIDR blocks are matched.
  /// [sourcePortRange] Source port or port range to match (e.g., `443` or `1024-65535`). Only valid when `protocol` is `6` (TCP) or `17` (UDP).
  const PolicyTableEntryPolicyRule({
    this.destinationCidrBlock,
    this.destinationPortRange,
    this.metadata,
    this.protocol,
    this.sourceCidrBlock,
    this.sourcePortRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': ?destinationCidrBlock,
      'destinationPortRange': ?destinationPortRange,
      'metadata': ?pulumi.Input.mapOptionalInputValue<PolicyTableEntryPolicyRuleMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'protocol': ?protocol,
      'sourceCidrBlock': ?sourceCidrBlock,
      'sourcePortRange': ?sourcePortRange,
    };
  }

  factory PolicyTableEntryPolicyRule.fromMap(Map<String, dynamic> map) {
    return PolicyTableEntryPolicyRule(
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRange: (() { final guardedValue = map['destinationPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyTableEntryPolicyRuleMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCidrBlock: (() { final guardedValue = map['sourceCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRange: (() { final guardedValue = map['sourcePortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
