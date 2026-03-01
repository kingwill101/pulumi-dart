// ignore_for_file: unused_element, unnecessary_cast


/// StringNotEndsWith Filter.
class StringNotEndsWithFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'StringNotEndsWith'.
  final String operatorType;
  /// The set of filter values.
  final List<String>? values;

  /// Creates a new [StringNotEndsWithFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  StringNotEndsWithFilterResponse({
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

  factory StringNotEndsWithFilterResponse.fromMap(Map<String, dynamic> map) {
    return StringNotEndsWithFilterResponse(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

