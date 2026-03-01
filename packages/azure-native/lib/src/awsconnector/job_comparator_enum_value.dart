// ignore_for_file: unused_element, unnecessary_cast


/// Definition of JobComparatorEnumValue
class JobComparatorEnumValue {
  /// Property value
  final String? value;

  /// Creates a new [JobComparatorEnumValue].
  /// [value] Property value
  JobComparatorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobComparatorEnumValue.fromMap(Map<String, dynamic> map) {
    return JobComparatorEnumValue(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

