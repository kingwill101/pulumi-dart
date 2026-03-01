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
    return <String, dynamic>{
      'audience': audience,
      'identityToken': identityToken,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory ProviderExternalCredentials.fromMap(Map<String, dynamic> map) {
    return ProviderExternalCredentials(
      audience: map['audience'] as String,
      identityToken: map['identityToken'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}

