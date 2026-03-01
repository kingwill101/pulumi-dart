// ignore_for_file: unused_element, unnecessary_cast

class ConnectionEventingConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  /// Creates a new [ConnectionEventingConfigAdditionalVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionEventingConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory ConnectionEventingConfigAdditionalVariableSecretValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionEventingConfigAdditionalVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
