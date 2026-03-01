// ignore_for_file: unused_element, unnecessary_cast


/// Auth Secrets for Azure Spring Apps App Instance Scale Rule
class ScaleRuleAuth {
  /// Name of the Azure Spring Apps App Instance secret from which to pull the auth params.
  final String? secretRef;
  /// Trigger Parameter that uses the secret
  final String? triggerParameter;

  /// Creates a new [ScaleRuleAuth].
  /// [secretRef] Name of the Azure Spring Apps App Instance secret from which to pull the auth params.
  /// [triggerParameter] Trigger Parameter that uses the secret
  ScaleRuleAuth({
    this.secretRef,
    this.triggerParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': ?secretRef,
      'triggerParameter': ?triggerParameter,
    };
  }

  factory ScaleRuleAuth.fromMap(Map<String, dynamic> map) {
    return ScaleRuleAuth(
      secretRef: map['secretRef'] == null ? null : map['secretRef'] as String,
      triggerParameter: map['triggerParameter'] == null ? null : map['triggerParameter'] as String,
    );
  }
}

