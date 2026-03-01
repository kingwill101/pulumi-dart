// ignore_for_file: unused_element, unnecessary_cast


class PlanSku {
  /// Specifies the number of workers associated with this App Service Plan.
  final int? capacity;
  /// Specifies the plan's instance size.
  final String size;
  /// Specifies the plan's pricing tier.
  final String tier;

  /// Creates a new [PlanSku].
  /// [capacity] Specifies the number of workers associated with this App Service Plan.
  /// [size] Specifies the plan's instance size.
  /// [tier] Specifies the plan's pricing tier.
  PlanSku({
    this.capacity,
    required this.size,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'size': size,
      'tier': tier,
    };
  }

  factory PlanSku.fromMap(Map<String, dynamic> map) {
    return PlanSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      size: map['size'] as String,
      tier: map['tier'] as String,
    );
  }
}

