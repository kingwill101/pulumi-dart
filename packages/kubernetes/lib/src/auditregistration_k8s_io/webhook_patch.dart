// ignore_for_file: unused_element, unnecessary_cast

import 'webhook_client_config_patch.dart';
import 'webhook_throttle_config_patch.dart';

/// Webhook holds the configuration of the webhook
class WebhookPatch {
  /// ClientConfig holds the connection parameters for the webhook required
  final WebhookClientConfigPatch? clientConfig;
  /// Throttle holds the options for throttling the webhook
  final WebhookThrottleConfigPatch? throttle;

  /// Creates a new [WebhookPatch].
  /// [clientConfig] ClientConfig holds the connection parameters for the webhook required
  /// [throttle] Throttle holds the options for throttling the webhook
  WebhookPatch({
    this.clientConfig,
    this.throttle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfig': ?clientConfig == null ? null : clientConfig!.toMap(),
      'throttle': ?throttle == null ? null : throttle!.toMap(),
    };
  }

  factory WebhookPatch.fromMap(Map<String, dynamic> map) {
    return WebhookPatch(
      clientConfig: map['clientConfig'] == null ? null : WebhookClientConfigPatch.fromMap((map['clientConfig'] as Map).cast<String, dynamic>()),
      throttle: map['throttle'] == null ? null : WebhookThrottleConfigPatch.fromMap((map['throttle'] as Map).cast<String, dynamic>()),
    );
  }
}

