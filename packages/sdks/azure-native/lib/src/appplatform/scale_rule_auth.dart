// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth Secrets for Azure Spring Apps App Instance Scale Rule
class ScaleRuleAuth {
  /// Name of the Azure Spring Apps App Instance secret from which to pull the auth params.
  final pulumi.Input<String>? secretRef;
  /// Trigger Parameter that uses the secret
  final pulumi.Input<String>? triggerParameter;

  /// Creates a new [ScaleRuleAuth].
  /// [secretRef] Name of the Azure Spring Apps App Instance secret from which to pull the auth params.
  /// [triggerParameter] Trigger Parameter that uses the secret
  const ScaleRuleAuth({
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
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerParameter: (() { final guardedValue = map['triggerParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

