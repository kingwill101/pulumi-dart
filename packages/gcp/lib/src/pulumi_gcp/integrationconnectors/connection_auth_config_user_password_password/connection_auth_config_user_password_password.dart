// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigUserPasswordPassword {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final String secretVersion;

  ConnectionAuthConfigUserPasswordPassword({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigUserPasswordPassword.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigUserPasswordPassword(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
