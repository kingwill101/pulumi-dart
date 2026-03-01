// ignore_for_file: unused_element, unnecessary_cast


/// NumberLessThanOrEquals Advanced Filter.
class NumberLessThanOrEqualsAdvancedFilter {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'NumberLessThanOrEquals'.
  final String operatorType;
  /// The filter value.
  final double? value;

  /// Creates a new [NumberLessThanOrEqualsAdvancedFilter].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The filter value.
  NumberLessThanOrEqualsAdvancedFilter({
    this.key,
    required this.operatorType,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
      'value': ?value,
    };
  }

  factory NumberLessThanOrEqualsAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return NumberLessThanOrEqualsAdvancedFilter(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

