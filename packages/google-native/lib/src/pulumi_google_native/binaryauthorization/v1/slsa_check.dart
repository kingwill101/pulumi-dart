// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'verification_rule.dart';

/// A SLSA provenance attestation check, which ensures that images are built by a trusted builder using source code from its trusted repositories only.
class SlsaCheck {
  /// Specifies a list of verification rules for the SLSA attestations. An image is considered compliant with the SlsaCheck if any of the rules are satisfied.
  final List<VerificationRule>? rules;

  SlsaCheck({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.encodeList<VerificationRule, Map<String, dynamic>>(
          rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory SlsaCheck.fromMap(Map<String, dynamic> map) {
    return SlsaCheck(
      rules: map['rules'] == null
          ? null
          : Input.decodeList<VerificationRule>(
              map['rules'],
              (value) => VerificationRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
