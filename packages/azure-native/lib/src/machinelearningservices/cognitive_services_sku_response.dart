// ignore_for_file: unused_element, unnecessary_cast


class CognitiveServicesSkuResponse {
  final int? capacity;
  final String? family;
  final String? name;
  final String? size;
  final String? tier;

  /// Creates a new [CognitiveServicesSkuResponse].
  /// [capacity] Optional.
  /// [family] Optional.
  /// [name] Optional.
  /// [size] Optional.
  /// [tier] Optional.
  CognitiveServicesSkuResponse({
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

  factory CognitiveServicesSkuResponse.fromMap(Map<String, dynamic> map) {
    return CognitiveServicesSkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

