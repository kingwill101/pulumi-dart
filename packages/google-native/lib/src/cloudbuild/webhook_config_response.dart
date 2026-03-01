// ignore_for_file: unused_element, unnecessary_cast

/// WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.
class WebhookConfigResponse {
  /// Resource name for the secret required as a URL parameter.
  final String secret;

  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final String state;

  /// Creates a new [WebhookConfigResponse].
  /// [secret] Resource name for the secret required as a URL parameter.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  WebhookConfigResponse({required this.secret, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secret': secret, 'state': state};
  }

  factory WebhookConfigResponse.fromMap(Map<String, dynamic> map) {
    return WebhookConfigResponse(
      secret: map['secret'] as String,
      state: map['state'] as String,
    );
  }
}
