// ignore_for_file: unused_element, unnecessary_cast

class ExternalCredentials {
  final String audience;
  final String identityToken;
  final String serviceAccountEmail;

  /// Creates a new [ExternalCredentials].
  /// [audience] Required.
  /// [identityToken] Required.
  /// [serviceAccountEmail] Required.
  ExternalCredentials({
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

  factory ExternalCredentials.fromMap(Map<String, dynamic> map) {
    return ExternalCredentials(
      audience: map['audience'] as String,
      identityToken: map['identityToken'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
