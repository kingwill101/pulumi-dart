// ignore_for_file: unused_element, unnecessary_cast

class RuleSourceCustomPolicyDetails {
  /// The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enableDebugLogDelivery;

  /// The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the [Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard).
  final String policyRuntime;

  /// The policy definition containing the logic for your Config Custom Policy rule.
  final String policyText;

  RuleSourceCustomPolicyDetails({
    this.enableDebugLogDelivery,
    required this.policyRuntime,
    required this.policyText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableDebugLogDeliveryValue = enableDebugLogDelivery;
    if (enableDebugLogDeliveryValue != null) {
      map['enableDebugLogDelivery'] = enableDebugLogDeliveryValue;
    }
    map['policyRuntime'] = policyRuntime;
    map['policyText'] = policyText;
    return map;
  }

  factory RuleSourceCustomPolicyDetails.fromMap(Map<String, dynamic> map) {
    return RuleSourceCustomPolicyDetails(
      enableDebugLogDelivery: map['enableDebugLogDelivery'] == null
          ? null
          : map['enableDebugLogDelivery'] as bool,
      policyRuntime: map['policyRuntime'] as String,
      policyText: map['policyText'] as String,
    );
  }
}
