// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDelegationSettingSecrets.
class ListDelegationSettingSecretsResult {
  /// This is secret value of the validation key in portal settings.
  final String? validationKey;

  /// Creates a new [ListDelegationSettingSecretsResult].
  /// [validationKey] This is secret value of the validation key in portal settings.
  ListDelegationSettingSecretsResult({
    this.validationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationKey': ?validationKey,
    };
  }

  factory ListDelegationSettingSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListDelegationSettingSecretsResult(
      validationKey: (() { final guardedValue = map['validationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

