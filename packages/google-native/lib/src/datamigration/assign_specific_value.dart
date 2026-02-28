// ignore_for_file: unused_element, unnecessary_cast

/// Set to a specific value (value is converted to fit the target data type)
class AssignSpecificValue {
  /// Specific value to be assigned
  final String value;

  /// Creates a new [AssignSpecificValue].
  /// [value] Specific value to be assigned
  AssignSpecificValue({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory AssignSpecificValue.fromMap(Map<String, dynamic> map) {
    return AssignSpecificValue(
      value: map['value'] as String,
    );
  }
}
