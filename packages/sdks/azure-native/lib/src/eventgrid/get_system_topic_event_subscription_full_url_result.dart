// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSystemTopicEventSubscriptionFullUrl.
class GetSystemTopicEventSubscriptionFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetSystemTopicEventSubscriptionFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  const GetSystemTopicEventSubscriptionFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetSystemTopicEventSubscriptionFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicEventSubscriptionFullUrlResult(
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
