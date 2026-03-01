// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopicEventSubscriptionFullUrl.
class GetTopicEventSubscriptionFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetTopicEventSubscriptionFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  GetTopicEventSubscriptionFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetTopicEventSubscriptionFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetTopicEventSubscriptionFullUrlResult(
      endpointUrl: map['endpointUrl'] == null ? null : map['endpointUrl'] as String,
    );
  }
}

