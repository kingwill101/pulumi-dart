// ignore_for_file: unused_element, unnecessary_cast

class ConnectionAuthConfigOauth2AuthCodeFlowClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final String secretVersion;

  /// Creates a new [ConnectionAuthConfigOauth2AuthCodeFlowClientSecret].
  /// [secretVersion] The resource name of the secret version in the format,
  ConnectionAuthConfigOauth2AuthCodeFlowClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secretVersion'] = secretVersion;
    return map;
  }

  factory ConnectionAuthConfigOauth2AuthCodeFlowClientSecret.fromMap(
      Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2AuthCodeFlowClientSecret(
      secretVersion: map['secretVersion'] as String,
    );
  }
}
