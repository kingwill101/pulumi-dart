// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlacementGroupStrategyEnumValue
class PlacementGroupStrategyEnumValue {
  /// Property value
  final String? value;

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
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

