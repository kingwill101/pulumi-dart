// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolSpotPriceLimit {
  /// The type of the preemptible instance.
  final String instanceType;
  /// The maximum price of a single instance.
  final String priceLimit;

  /// Creates a new [GetKubernetesNodePoolsNodepoolSpotPriceLimit].
  /// [instanceType] The type of the preemptible instance.
  /// [priceLimit] The maximum price of a single instance.
  GetKubernetesNodePoolsNodepoolSpotPriceLimit({
    required this.instanceType,
    required this.priceLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'priceLimit': priceLimit,
    };
  }

  factory GetKubernetesNodePoolsNodepoolSpotPriceLimit.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolSpotPriceLimit(
      instanceType: map['instanceType'] as String,
      priceLimit: map['priceLimit'] as String,
    );
  }
}

