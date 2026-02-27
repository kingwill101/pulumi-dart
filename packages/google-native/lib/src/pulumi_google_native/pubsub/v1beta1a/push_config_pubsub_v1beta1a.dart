// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a push delivery endpoint.
class PushConfigPubsubV1beta1a {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final String? pushEndpoint;

  PushConfigPubsubV1beta1a({
    this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pushEndpointValue = pushEndpoint;
    if (pushEndpointValue != null) {
      map['pushEndpoint'] = pushEndpointValue;
    }
    return map;
  }

  factory PushConfigPubsubV1beta1a.fromMap(Map<String, dynamic> map) {
    return PushConfigPubsubV1beta1a(
      pushEndpoint:
          map['pushEndpoint'] == null ? null : map['pushEndpoint'] as String,
    );
  }
}
