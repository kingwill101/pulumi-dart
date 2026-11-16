// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyFirewallPolicyRoute53ResolvedIpValidation {
  final pulumi.Input<String> action;
  final pulumi.Input<List<String>> bypassDestinationValidationIpRanges;
  final pulumi.Input<String> dnsExpiryExceptionPolicy;
  final pulumi.Input<String> dnsFirewallRuleGroupId;
  final pulumi.Input<List<String>> sourceIpRanges;

  /// Creates a new [GetFirewallPolicyFirewallPolicyRoute53ResolvedIpValidation].
  /// [action] Required.
  /// [bypassDestinationValidationIpRanges] Required.
  /// [dnsExpiryExceptionPolicy] Required.
  /// [dnsFirewallRuleGroupId] Required.
  /// [sourceIpRanges] Required.
  const GetFirewallPolicyFirewallPolicyRoute53ResolvedIpValidation({
    required this.action,
    required this.bypassDestinationValidationIpRanges,
    required this.dnsExpiryExceptionPolicy,
    required this.dnsFirewallRuleGroupId,
    required this.sourceIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'bypassDestinationValidationIpRanges': bypassDestinationValidationIpRanges,
      'dnsExpiryExceptionPolicy': dnsExpiryExceptionPolicy,
      'dnsFirewallRuleGroupId': dnsFirewallRuleGroupId,
      'sourceIpRanges': sourceIpRanges,
    };
  }

  factory GetFirewallPolicyFirewallPolicyRoute53ResolvedIpValidation.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyRoute53ResolvedIpValidation(
      action: pulumi.Input.fromValue(map['action'] as String),
      bypassDestinationValidationIpRanges: pulumi.Input.fromValue((map['bypassDestinationValidationIpRanges'] as List).cast<String>()),
      dnsExpiryExceptionPolicy: pulumi.Input.fromValue(map['dnsExpiryExceptionPolicy'] as String),
      dnsFirewallRuleGroupId: pulumi.Input.fromValue(map['dnsFirewallRuleGroupId'] as String),
      sourceIpRanges: pulumi.Input.fromValue((map['sourceIpRanges'] as List).cast<String>()),
    );
  }
}
