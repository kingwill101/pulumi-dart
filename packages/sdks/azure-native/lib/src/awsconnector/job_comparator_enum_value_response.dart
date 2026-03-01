// ignore_for_file: unused_element, unnecessary_cast


/// Definition of JobComparatorEnumValue
class JobComparatorEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [JobComparatorEnumValueResponse].
  /// [value] Property value
  JobComparatorEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory JobComparatorEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return JobComparatorEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

