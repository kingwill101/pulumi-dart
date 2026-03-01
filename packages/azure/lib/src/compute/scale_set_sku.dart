// ignore_for_file: unused_element, unnecessary_cast


class ScaleSetSku {
  /// Specifies the number of virtual machines in the scale set.
  final int capacity;
  /// Specifies the size of virtual machines in a scale set.
  final String name;
  /// Specifies the tier of virtual machines in a scale set. Possible values, `standard` or `basic`.
  final String? tier;

  /// Creates a new [ScaleSetSku].
  /// [capacity] Specifies the number of virtual machines in the scale set.
  /// [name] Specifies the size of virtual machines in a scale set.
  /// [tier] Specifies the tier of virtual machines in a scale set. Possible values, `standard` or `basic`.
  ScaleSetSku({
    required this.capacity,
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory ScaleSetSku.fromMap(Map<String, dynamic> map) {
    return ScaleSetSku(
      capacity: map['capacity'] as int,
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

