// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceTopicEventSubscriptionFullUrl.
class GetNamespaceTopicEventSubscriptionFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetNamespaceTopicEventSubscriptionFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  GetNamespaceTopicEventSubscriptionFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetNamespaceTopicEventSubscriptionFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicEventSubscriptionFullUrlResult(
      endpointUrl: map['endpointUrl'] == null ? null : map['endpointUrl'] as String,
    );
  }
}

