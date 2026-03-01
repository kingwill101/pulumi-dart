// ignore_for_file: unused_element, unnecessary_cast


/// Description of a NotificationHub BrowserCredential.
class BrowserCredentialResponse {
  /// Gets or sets web push subject.
  final String subject;
  /// Gets or sets VAPID private key.
  final String vapidPrivateKey;
  /// Gets or sets VAPID public key.
  final String vapidPublicKey;

  /// Creates a new [BrowserCredentialResponse].
  /// [subject] Gets or sets web push subject.
  /// [vapidPrivateKey] Gets or sets VAPID private key.
  /// [vapidPublicKey] Gets or sets VAPID public key.
  BrowserCredentialResponse({
    required this.subject,
    required this.vapidPrivateKey,
    required this.vapidPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': subject,
      'vapidPrivateKey': vapidPrivateKey,
      'vapidPublicKey': vapidPublicKey,
    };
  }

  factory BrowserCredentialResponse.fromMap(Map<String, dynamic> map) {
    return BrowserCredentialResponse(
      subject: map['subject'] as String,
      vapidPrivateKey: map['vapidPrivateKey'] as String,
      vapidPublicKey: map['vapidPublicKey'] as String,
    );
  }
}

