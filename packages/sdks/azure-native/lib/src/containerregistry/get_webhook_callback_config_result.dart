// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebhookCallbackConfig.
class GetWebhookCallbackConfigResult {
  /// Custom headers that will be added to the webhook notifications.
  final Map<String, String>? customHeaders;
  /// The service URI for the webhook to post notifications.
  final String serviceUri;

  /// Creates a new [GetWebhookCallbackConfigResult].
  /// [customHeaders] Custom headers that will be added to the webhook notifications.
  /// [serviceUri] The service URI for the webhook to post notifications.
  const GetWebhookCallbackConfigResult({
    this.customHeaders,
    required this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHeaders': ?customHeaders,
      'serviceUri': serviceUri,
    };
  }

  factory GetWebhookCallbackConfigResult.fromMap(Map<String, dynamic> map) {
    return GetWebhookCallbackConfigResult(
      customHeaders: (() { final guardedValue = map['customHeaders']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      serviceUri: map['serviceUri'] as String,
    );
  }
}

