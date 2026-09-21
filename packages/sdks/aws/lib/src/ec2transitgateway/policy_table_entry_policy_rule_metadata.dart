// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyTableEntryPolicyRuleMetadata {
  /// Metadata key name for the policy rule.
  final pulumi.Input<String?>? key;
  /// Metadata key value for the policy rule.
  ///
  /// &gt; **Note:** The EC2 API does not return policy rule metadata when describing transit gateway policy table entries, so Terraform cannot detect drift in `metadata` or recover its value when importing this resource. Configure `metadata` explicitly if you need it managed.
  final pulumi.Input<String?>? value;

  /// Creates a new [PolicyTableEntryPolicyRuleMetadata].
  /// [key] Metadata key name for the policy rule.
  /// [value] Metadata key value for the policy rule.
  const PolicyTableEntryPolicyRuleMetadata({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory PolicyTableEntryPolicyRuleMetadata.fromMap(Map<String, dynamic> map) {
    return PolicyTableEntryPolicyRuleMetadata(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
