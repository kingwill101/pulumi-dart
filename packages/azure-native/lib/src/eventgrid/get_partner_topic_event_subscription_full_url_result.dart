// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartnerTopicEventSubscriptionFullUrl.
class GetPartnerTopicEventSubscriptionFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetPartnerTopicEventSubscriptionFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  GetPartnerTopicEventSubscriptionFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetPartnerTopicEventSubscriptionFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicEventSubscriptionFullUrlResult(
      endpointUrl: map['endpointUrl'] == null ? null : map['endpointUrl'] as String,
    );
  }
}

