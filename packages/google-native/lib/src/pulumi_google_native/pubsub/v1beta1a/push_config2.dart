// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a push delivery endpoint.
class PushConfig2 {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final String? pushEndpoint;

  PushConfig2({
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

  factory PushConfig2.fromMap(Map<String, dynamic> map) {
    return PushConfig2(
      pushEndpoint:
          map['pushEndpoint'] == null ? null : map['pushEndpoint'] as String,
    );
  }
}
