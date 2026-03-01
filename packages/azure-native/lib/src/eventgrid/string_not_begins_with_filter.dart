// ignore_for_file: unused_element, unnecessary_cast


/// StringNotBeginsWith Filter.
class StringNotBeginsWithFilter {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'StringNotBeginsWith'.
  final String operatorType;
  /// The set of filter values.
  final List<String>? values;

  /// Creates a new [StringNotBeginsWithFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  StringNotBeginsWithFilter({
    this.key,
    required this.operatorType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
      'values': ?values,
    };
  }

  factory StringNotBeginsWithFilter.fromMap(Map<String, dynamic> map) {
    return StringNotBeginsWithFilter(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

