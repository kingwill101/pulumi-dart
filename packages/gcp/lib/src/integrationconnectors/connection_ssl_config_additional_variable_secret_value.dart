// ignore_for_file: unused_element, unnecessary_cast

class ConnectionSslConfigAdditionalVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  /// Creates a new [ConnectionSslConfigAdditionalVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionSslConfigAdditionalVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory ConnectionSslConfigAdditionalVariableSecretValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionSslConfigAdditionalVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
