// ignore_for_file: unused_element, unnecessary_cast

class ConnectionEventingConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionEventingConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionEventingConfigAdditionalVariableSecretValue.fromMap(
      Map<String, dynamic> map) {
    return ConnectionEventingConfigAdditionalVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
