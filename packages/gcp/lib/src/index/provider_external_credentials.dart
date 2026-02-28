// ignore_for_file: unused_element, unnecessary_cast

class ProviderExternalCredentials {
  final String audience;
  final String identityToken;
  final String serviceAccountEmail;

  /// Creates a new [ProviderExternalCredentials].
  /// [audience] Required.
  /// [identityToken] Required.
  /// [serviceAccountEmail] Required.
  ProviderExternalCredentials({
    required this.audience,
    required this.identityToken,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audience'] = audience;
    map['identityToken'] = identityToken;
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory ProviderExternalCredentials.fromMap(Map<String, dynamic> map) {
    return ProviderExternalCredentials(
      audience: map['audience'] as String,
      identityToken: map['identityToken'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
