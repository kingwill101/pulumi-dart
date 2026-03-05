// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolSpotPriceLimit {
  /// The type of the preemptible instance.
  final pulumi.Input<String>? instanceType;
  /// The maximum price of a single instance.
  final pulumi.Input<String>? priceLimit;

  /// Creates a new [NodePoolSpotPriceLimit].
  /// [instanceType] The type of the preemptible instance.
  /// [priceLimit] The maximum price of a single instance.
  NodePoolSpotPriceLimit({
    this.instanceType,
    this.priceLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': ?instanceType,
      'priceLimit': ?priceLimit,
    };
  }

  factory NodePoolSpotPriceLimit.fromMap(Map<String, dynamic> map) {
    return NodePoolSpotPriceLimit(
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priceLimit: (() { final guardedValue = map['priceLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

