// ignore_for_file: unused_element, unnecessary_cast

class ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue.fromMap(
      Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfigAdditionalVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
