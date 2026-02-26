// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigOauth2JwtBearerClientKey {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final String secretVersion;

  ConnectionAuthConfigOauth2JwtBearerClientKey({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigOauth2JwtBearerClientKey.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2JwtBearerClientKey(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
