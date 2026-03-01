// ignore_for_file: unused_element, unnecessary_cast


/// IsNotNull Advanced Filter.
class IsNotNullAdvancedFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'IsNotNull'.
  final String operatorType;

  /// Creates a new [IsNotNullAdvancedFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  IsNotNullAdvancedFilterResponse({
    this.key,
    required this.operatorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
    };
  }

  factory IsNotNullAdvancedFilterResponse.fromMap(Map<String, dynamic> map) {
    return IsNotNullAdvancedFilterResponse(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
    );
  }
}

