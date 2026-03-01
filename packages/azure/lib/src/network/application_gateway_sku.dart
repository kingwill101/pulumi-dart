// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewaySku {
  /// The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between `1` and `32`, and `1` to `125` for a V2 SKU. When using a `Basic` SKU this property must be between `1` and `2`. This property is optional if `autoscale_configuration` is set.
  final int? capacity;
  /// The Name of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard_Small`, `Standard_Medium`, `Standard_Large`, `Standard_v2`, `WAF_Large`, `WAF_Medium` and `WAF_v2`.
  ///
  /// > **Note:** `Standard_Small`, `Standard_Medium`, `Standard_Large`, `WAF_Medium`, and `WAF_Large` values are deprecated. `name` can no longer be created with or updated to these values. Refer to <https://aka.ms/V1retirement>.
  final String name;
  /// The Tier of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard`, `Standard_v2`, `WAF`, and `WAF_v2`.
  ///
  /// > **Note:** `Standard` and `WAF` values are deprecated. `tier` can no longer be created with or updated to these values. Refer to <https://aka.ms/V1retirement>.
  final String tier;

  /// Creates a new [ApplicationGatewaySku].
  /// [capacity] The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between `1` and `32`, and `1` to `125` for a V2 SKU. When using a `Basic` SKU this property must be between `1` and `2`. This property is optional if `autoscale_configuration` is set.
  /// [name] The Name of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard_Small`, `Standard_Medium`, `Standard_Large`, `Standard_v2`, `WAF_Large`, `WAF_Medium` and `WAF_v2`.
  /// [tier] The Tier of the SKU to use for this Application Gateway. Possible values are `Basic`, `Standard`, `Standard_v2`, `WAF`, and `WAF_v2`.
  ApplicationGatewaySku({
    this.capacity,
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': tier,
    };
  }

  factory ApplicationGatewaySku.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

