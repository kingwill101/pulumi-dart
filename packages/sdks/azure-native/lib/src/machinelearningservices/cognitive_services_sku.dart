// ignore_for_file: unused_element, unnecessary_cast


class CognitiveServicesSku {
  final int? capacity;
  final String? family;
  final String? name;
  final String? size;
  final String? tier;

  /// Creates a new [CognitiveServicesSku].
  /// [capacity] Optional.
  /// [family] Optional.
  /// [name] Optional.
  /// [size] Optional.
  /// [tier] Optional.
  CognitiveServicesSku({
    this.capacity,
    this.family,
    this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': ?name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory CognitiveServicesSku.fromMap(Map<String, dynamic> map) {
    return CognitiveServicesSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

