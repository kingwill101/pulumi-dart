// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CognitiveServicesSku {
  final pulumi.Input<int?>? capacity;
  final pulumi.Input<String?>? family;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? size;
  final pulumi.Input<String?>? tier;

  /// Creates a new [CognitiveServicesSku].
  /// [capacity] Optional.
  /// [family] Optional.
  /// [name] Optional.
  /// [size] Optional.
  /// [tier] Optional.
  const CognitiveServicesSku({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
