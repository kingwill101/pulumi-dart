// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CognitiveServicesSku {
  final pulumi.Input<int>? capacity;
  final pulumi.Input<String>? family;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? size;
  final pulumi.Input<String>? tier;

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
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

