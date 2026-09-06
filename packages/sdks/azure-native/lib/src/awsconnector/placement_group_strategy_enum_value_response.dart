// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlacementGroupStrategyEnumValue
class PlacementGroupStrategyEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [PlacementGroupStrategyEnumValueResponse].
  /// [value] Property value
  const PlacementGroupStrategyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlacementGroupStrategyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PlacementGroupStrategyEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
