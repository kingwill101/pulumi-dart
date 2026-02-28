// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'verification_rule_response.dart';

/// A SLSA provenance attestation check, which ensures that images are built by a trusted builder using source code from its trusted repositories only.
class SlsaCheckResponse {
  /// Specifies a list of verification rules for the SLSA attestations. An image is considered compliant with the SlsaCheck if any of the rules are satisfied.
  final List<VerificationRuleResponse> rules;

  /// Creates a new [SlsaCheckResponse].
  /// [rules] Specifies a list of verification rules for the SLSA attestations. An image is considered compliant with the SlsaCheck if any of the rules are satisfied.
  SlsaCheckResponse({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] =
        pulumi.Input.encodeList<VerificationRuleResponse, Map<String, dynamic>>(
            rules, (value) => value.toMap());
    return map;
  }

  factory SlsaCheckResponse.fromMap(Map<String, dynamic> map) {
    return SlsaCheckResponse(
      rules: pulumi.Input.decodeList<VerificationRuleResponse>(
          map['rules'],
          (value) => VerificationRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
