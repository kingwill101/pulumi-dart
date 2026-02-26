// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a push delivery endpoint.
class PushConfigResponse2 {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final String pushEndpoint;

  PushConfigResponse2({
    required this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pushEndpoint'] = pushEndpoint;
    return map;
  }

  factory PushConfigResponse2.fromMap(Map<String, dynamic> map) {
    return PushConfigResponse2(
      pushEndpoint: map['pushEndpoint'] as String,
    );
  }
}
