// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainTopicEventSubscriptionFullUrl.
class GetDomainTopicEventSubscriptionFullUrlResult {
  /// The URL that represents the endpoint of the destination of an event subscription.
  final String? endpointUrl;

  /// Creates a new [GetDomainTopicEventSubscriptionFullUrlResult].
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  const GetDomainTopicEventSubscriptionFullUrlResult({
    this.endpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUrl': ?endpointUrl,
    };
  }

  factory GetDomainTopicEventSubscriptionFullUrlResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicEventSubscriptionFullUrlResult(
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
