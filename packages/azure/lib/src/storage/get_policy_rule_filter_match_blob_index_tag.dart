// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyRuleFilterMatchBlobIndexTag {
  /// The filter tag name used for tag based filtering for blob objects.
  final String name;
  /// The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  final String operation;
  /// The filter tag value used for tag based filtering for blob objects.
  final String value;

  /// Creates a new [GetPolicyRuleFilterMatchBlobIndexTag].
  /// [name] The filter tag name used for tag based filtering for blob objects.
  /// [operation] The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  /// [value] The filter tag value used for tag based filtering for blob objects.
  GetPolicyRuleFilterMatchBlobIndexTag({
    required this.name,
    required this.operation,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operation': operation,
      'value': value,
    };
  }

  factory GetPolicyRuleFilterMatchBlobIndexTag.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleFilterMatchBlobIndexTag(
      name: map['name'] as String,
      operation: map['operation'] as String,
      value: map['value'] as String,
    );
  }
}

