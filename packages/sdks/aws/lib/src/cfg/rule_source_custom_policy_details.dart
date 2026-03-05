// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSourceCustomPolicyDetails {
  /// The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is `false`.
  final pulumi.Input<bool>? enableDebugLogDelivery;
  /// The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the [Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard).
  final pulumi.Input<String> policyRuntime;
  /// The policy definition containing the logic for your Config Custom Policy rule.
  final pulumi.Input<String> policyText;

  /// Creates a new [RuleSourceCustomPolicyDetails].
  /// [enableDebugLogDelivery] The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is `false`.
  /// [policyRuntime] The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the [Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard).
  /// [policyText] The policy definition containing the logic for your Config Custom Policy rule.
  RuleSourceCustomPolicyDetails({
    this.enableDebugLogDelivery,
    required this.policyRuntime,
    required this.policyText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDebugLogDelivery': ?enableDebugLogDelivery,
      'policyRuntime': policyRuntime,
      'policyText': policyText,
    };
  }

  factory RuleSourceCustomPolicyDetails.fromMap(Map<String, dynamic> map) {
    return RuleSourceCustomPolicyDetails(
      enableDebugLogDelivery: (() { final guardedValue = map['enableDebugLogDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      policyRuntime: pulumi.Input.fromValue(map['policyRuntime'] as String),
      policyText: pulumi.Input.fromValue(map['policyText'] as String),
    );
  }
}

