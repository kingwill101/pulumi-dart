// ignore_for_file: unused_element, unnecessary_cast


/// BoolEquals Advanced Filter.
class BoolEqualsAdvancedFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'BoolEquals'.
  final String operatorType;
  /// The boolean filter value.
  final bool? value;

  /// Creates a new [BoolEqualsAdvancedFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// [value] The boolean filter value.
  BoolEqualsAdvancedFilterResponse({
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

  factory BoolEqualsAdvancedFilterResponse.fromMap(Map<String, dynamic> map) {
    return BoolEqualsAdvancedFilterResponse(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
      value: map['value'] == null ? null : map['value'] as bool,
    );
  }
}

