// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a push delivery endpoint.
class PushConfigResponsePubsubV1beta1a {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final String pushEndpoint;

  PushConfigResponsePubsubV1beta1a({
    required this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pushEndpoint'] = pushEndpoint;
    return map;
  }

  factory PushConfigResponsePubsubV1beta1a.fromMap(Map<String, dynamic> map) {
    return PushConfigResponsePubsubV1beta1a(
      pushEndpoint: map['pushEndpoint'] as String,
    );
  }
}
