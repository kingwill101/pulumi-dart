// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet {
  final pulumi.Input<List<String>> definitions;

  /// Creates a new [GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet].
  /// [definitions] Required.
  GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet({
    required this.definitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': definitions,
    };
  }

  factory GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyPolicyVariableRuleVariableIpSet(
      definitions: pulumi.Input.fromValue((map['definitions'] as List).cast<String>()),
    );
  }
}

