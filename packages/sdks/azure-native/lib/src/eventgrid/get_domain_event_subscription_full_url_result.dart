// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainEventSubscriptionFullUrl.
class GetDomainEventSubscriptionFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetDomainEventSubscriptionFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  GetDomainEventSubscriptionFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetDomainEventSubscriptionFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetDomainEventSubscriptionFullUrlResult(
      endpointUrl: map['endpointUrl'] == null ? null : map['endpointUrl']! as String,
    );
  }
}

