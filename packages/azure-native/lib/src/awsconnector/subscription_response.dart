// ignore_for_file: unused_element, unnecessary_cast


/// Definition of Subscription
class SubscriptionResponse {
  /// The endpoint that receives notifications from the SNS topic. The endpoint value depends on the protocol that you specify. For more information, see the ``Endpoint`` parameter of the ``Subscribe`` action in the *API Reference*.
  final String? endpoint;
  /// The subscription's protocol. For more information, see the ``Protocol`` parameter of the ``Subscribe`` action in the *API Reference*.
  final String? protocol;

  /// Creates a new [SubscriptionResponse].
  /// [endpoint] The endpoint that receives notifications from the SNS topic. The endpoint value depends on the protocol that you specify. For more information, see the ``Endpoint`` parameter of the ``Subscribe`` action in the *API Reference*.
  /// [protocol] The subscription's protocol. For more information, see the ``Protocol`` parameter of the ``Subscribe`` action in the *API Reference*.
  SubscriptionResponse({
    this.endpoint,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'protocol': ?protocol,
    };
  }

  factory SubscriptionResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionResponse(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

