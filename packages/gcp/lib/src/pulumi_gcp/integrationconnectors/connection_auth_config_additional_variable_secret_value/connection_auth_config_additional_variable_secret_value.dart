// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  ConnectionAuthConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigAdditionalVariableSecretValue.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigAdditionalVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
