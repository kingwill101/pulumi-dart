// ignore_for_file: unused_element, unnecessary_cast


/// NumberInRange Advanced Filter.
class NumberInRangeAdvancedFilter {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberInRange'.
  final String operatorType;
  /// The set of filter values.
  final List<List<double>>? values;

  /// Creates a new [NumberInRangeAdvancedFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [values] The set of filter values.
  NumberInRangeAdvancedFilter({
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

  factory NumberInRangeAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return NumberInRangeAdvancedFilter(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<List<double>>(),
    );
  }
}

