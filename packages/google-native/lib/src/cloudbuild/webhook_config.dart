// ignore_for_file: unused_element, unnecessary_cast

import 'webhook_config_state.dart';

/// WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.
class WebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  final String secret;

  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final WebhookConfigState? state;

  /// Creates a new [WebhookConfig].
  /// [secret] Resource name for the secret required as a URL parameter.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  WebhookConfig({
    required this.secret,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secret'] = secret;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    return map;
  }

  factory WebhookConfig.fromMap(Map<String, dynamic> map) {
    return WebhookConfig(
      secret: map['secret'] as String,
      state: map['state'] == null
          ? null
          : WebhookConfigState.fromValue(map['state'] as String),
    );
  }
}
