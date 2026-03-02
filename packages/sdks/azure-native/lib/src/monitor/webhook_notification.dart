// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Webhook notification of an autoscale event.
class WebhookNotification {
  /// a property bag of settings. This value can be empty.
  final pulumi.Input<Map<String, String>>? properties;
  /// the service address to receive the notification.
  final pulumi.Input<String>? serviceUri;

  /// Creates a new [WebhookNotification].
  /// [properties] a property bag of settings. This value can be empty.
  /// [serviceUri] the service address to receive the notification.
  WebhookNotification({
    this.properties,
    this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'serviceUri': ?serviceUri,
    };
  }

  factory WebhookNotification.fromMap(Map<String, dynamic> map) {
    return WebhookNotification(
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      serviceUri: map['serviceUri'] == null ? null : (map['serviceUri']! as String).input(),
    );
  }
}

