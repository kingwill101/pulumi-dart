// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Subscription
class Subscription {
  /// The endpoint that receives notifications from the SNS topic. The endpoint value depends on the protocol that you specify. For more information, see the ``Endpoint`` parameter of the ``Subscribe`` action in the *API Reference*.
  final pulumi.Input<String>? endpoint;
  /// The subscription's protocol. For more information, see the ``Protocol`` parameter of the ``Subscribe`` action in the *API Reference*.
  final pulumi.Input<String>? protocol;

  /// Creates a new [Subscription].
  /// [endpoint] The endpoint that receives notifications from the SNS topic. The endpoint value depends on the protocol that you specify. For more information, see the ``Endpoint`` parameter of the ``Subscribe`` action in the *API Reference*.
  /// [protocol] The subscription's protocol. For more information, see the ``Protocol`` parameter of the ``Subscribe`` action in the *API Reference*.
  Subscription({
    this.endpoint,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'protocol': ?protocol,
    };
  }

  factory Subscription.fromMap(Map<String, dynamic> map) {
    return Subscription(
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
    );
  }
}

