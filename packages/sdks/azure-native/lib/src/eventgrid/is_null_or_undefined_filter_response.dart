// ignore_for_file: unused_element, unnecessary_cast


/// IsNullOrUndefined Filter.
class IsNullOrUndefinedFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final String? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'IsNullOrUndefined'.
  final String operatorType;

  /// Creates a new [IsNullOrUndefinedFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  IsNullOrUndefinedFilterResponse({
    this.key,
    required this.operatorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
    };
  }

  factory IsNullOrUndefinedFilterResponse.fromMap(Map<String, dynamic> map) {
    return IsNullOrUndefinedFilterResponse(
      key: map['key'] == null ? null : map['key'] as String,
      operatorType: map['operatorType'] as String,
    );
  }
}

