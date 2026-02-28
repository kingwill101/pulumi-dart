// ignore_for_file: unused_element, unnecessary_cast


class ConnectionConfigVariableSecretValue {
  /// Secret version of Secret Value for Config variable.
  final String secretVersion;

  /// Creates a new [ConnectionConfigVariableSecretValue].
  /// [secretVersion] Secret version of Secret Value for Config variable.
  ConnectionConfigVariableSecretValue({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionConfigVariableSecretValue.fromMap(Map<String, dynamic> map) {
    return ConnectionConfigVariableSecretValue(
      secretVersion: map['secretVersion'] as String,
    );
  }
}

