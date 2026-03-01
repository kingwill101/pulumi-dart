// ignore_for_file: unused_element, unnecessary_cast


class NodePoolSpotPriceLimit {
  /// The type of the preemptible instance.
  final String? instanceType;
  /// The maximum price of a single instance.
  final String? priceLimit;

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
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      priceLimit: map['priceLimit'] == null ? null : map['priceLimit'] as String,
    );
  }
}

