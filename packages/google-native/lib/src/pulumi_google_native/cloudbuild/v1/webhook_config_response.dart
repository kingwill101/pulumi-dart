// ignore_for_file: unused_element, unnecessary_cast

/// WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.
class WebhookConfigResponse {
  /// Resource name for the secret required as a URL parameter.
  final String secret;

  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final String state;

  WebhookConfigResponse({
    required this.secret,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secret'] = secret;
    map['state'] = state;
    return map;
  }

  factory WebhookConfigResponse.fromMap(Map<String, dynamic> map) {
    return WebhookConfigResponse(
      secret: map['secret'] as String,
      state: map['state'] as String,
    );
  }
}
