// ignore_for_file: unused_element, unnecessary_cast


/// Definition of PlacementGroupStrategyEnumValue
class PlacementGroupStrategyEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [PlacementGroupStrategyEnumValueResponse].
  /// [value] Property value
  PlacementGroupStrategyEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlacementGroupStrategyEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PlacementGroupStrategyEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

