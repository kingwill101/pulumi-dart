// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth Secrets for Azure Spring Apps App Instance Scale Rule
class ScaleRuleAuthResponse {
  /// Name of the Azure Spring Apps App Instance secret from which to pull the auth params.
  final pulumi.Input<String>? secretRef;
  /// Trigger Parameter that uses the secret
  final pulumi.Input<String>? triggerParameter;

  /// Creates a new [ScaleRuleAuthResponse].
  /// [secretRef] Name of the Azure Spring Apps App Instance secret from which to pull the auth params.
  /// [triggerParameter] Trigger Parameter that uses the secret
  ScaleRuleAuthResponse({
    this.secretRef,
    this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': ?secretRef,
      'triggerParameter': ?triggerParameter,
    };
  }

  factory ScaleRuleAuthResponse.fromMap(Map<String, dynamic> map) {
    return ScaleRuleAuthResponse(
      secretRef: map['secretRef'] == null ? null : (map['secretRef'] as String).input(),
      triggerParameter: map['triggerParameter'] == null ? null : (map['triggerParameter'] as String).input(),
    );
  }
}

