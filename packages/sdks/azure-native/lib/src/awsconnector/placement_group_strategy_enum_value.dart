// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlacementGroupStrategyEnumValue
class PlacementGroupStrategyEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [PlacementGroupStrategyEnumValue].
  /// [value] Property value
  PlacementGroupStrategyEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlacementGroupStrategyEnumValue.fromMap(Map<String, dynamic> map) {
    return PlacementGroupStrategyEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

