// ignore_for_file: unused_element, unnecessary_cast


class ExpressRouteCircuitSku {
  /// The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  ///
  /// > **Note:** You can migrate from `MeteredData` to `UnlimitedData`, but not the other way around.
  final String family;
  /// The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  final String tier;

  /// Creates a new [ExpressRouteCircuitSku].
  /// [family] The billing mode for bandwidth. Possible values are `MeteredData` or `UnlimitedData`.
  /// [tier] The service tier. Possible values are `Basic`, `Local`, `Standard` or `Premium`.
  ExpressRouteCircuitSku({
    required this.family,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'family': family,
      'tier': tier,
    };
  }

  factory ExpressRouteCircuitSku.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitSku(
      family: map['family'] as String,
      tier: map['tier'] as String,
    );
  }
}

