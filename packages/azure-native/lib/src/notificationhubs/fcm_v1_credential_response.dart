// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub FcmV1Credential.
class FcmV1CredentialResponse {
  /// Gets or sets client email.
  final String clientEmail;
  /// Gets or sets private key.
  final String privateKey;
  /// Gets or sets project id.
  final String projectId;

  /// Creates a new [FcmV1CredentialResponse].
  /// [clientEmail] Gets or sets client email.
  /// [privateKey] Gets or sets private key.
  /// [projectId] Gets or sets project id.
  FcmV1CredentialResponse({
    required this.clientEmail,
    required this.privateKey,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientEmail': clientEmail,
      'privateKey': privateKey,
      'projectId': projectId,
    };
  }

  factory FcmV1CredentialResponse.fromMap(Map<String, dynamic> map) {
    return FcmV1CredentialResponse(
      clientEmail: map['clientEmail'] as String,
      privateKey: map['privateKey'] as String,
      projectId: map['projectId'] as String,
    );
  }
}

