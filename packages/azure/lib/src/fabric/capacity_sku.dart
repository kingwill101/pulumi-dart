// ignore_for_file: unused_element, unnecessary_cast


class CapacitySku {
  /// The name of the SKU to use for the Fabric Capacity. Possible values are `F2`, `F4`, `F8`, `F16`, `F32`, `F64`, `F128`, `F256`, `F512`, `F1024`, `F2048`.
  final String name;
  /// The tier of the SKU to use for the Fabric Capacity. The only possible value is `Fabric`.
  final String tier;

  /// Creates a new [CapacitySku].
  /// [name] The name of the SKU to use for the Fabric Capacity. Possible values are `F2`, `F4`, `F8`, `F16`, `F32`, `F64`, `F128`, `F256`, `F512`, `F1024`, `F2048`.
  /// [tier] The tier of the SKU to use for the Fabric Capacity. The only possible value is `Fabric`.
  CapacitySku({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory CapacitySku.fromMap(Map<String, dynamic> map) {
    return CapacitySku(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

