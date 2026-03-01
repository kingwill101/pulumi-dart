// ignore_for_file: unused_element, unnecessary_cast


/// Definition of SimpleCriterionKeyForJobEnumValue
class SimpleCriterionKeyForJobEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [SimpleCriterionKeyForJobEnumValue].
  /// [value] Property value
  SimpleCriterionKeyForJobEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory SimpleCriterionKeyForJobEnumValue.fromMap(Map<String, dynamic> map) {
    return SimpleCriterionKeyForJobEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

