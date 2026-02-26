// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerWebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  final String secret;

  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final String state;

  GetTriggerWebhookConfig({
    required this.secret,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secret'] = secret;
    map['state'] = state;
    return map;
  }

  factory GetTriggerWebhookConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerWebhookConfig(
      secret: map['secret'] as String,
      state: map['state'] as String,
    );
  }
}
