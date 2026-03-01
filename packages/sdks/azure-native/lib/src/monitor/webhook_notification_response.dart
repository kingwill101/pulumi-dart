// ignore_for_file: unused_element, unnecessary_cast


/// Webhook notification of an autoscale event.
class WebhookNotificationResponse {
  /// a property bag of settings. This value can be empty.
  final Map<String, String>? properties;
  /// the service address to receive the notification.
  final String? serviceUri;

  /// Creates a new [WebhookNotificationResponse].
  /// [properties] a property bag of settings. This value can be empty.
  /// [serviceUri] the service address to receive the notification.
  WebhookNotificationResponse({
    this.properties,
    this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'serviceUri': ?serviceUri,
    };
  }

  factory WebhookNotificationResponse.fromMap(Map<String, dynamic> map) {
    return WebhookNotificationResponse(
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      serviceUri: map['serviceUri'] == null ? null : map['serviceUri'] as String,
    );
  }
}

