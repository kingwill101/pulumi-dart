// ignore_for_file: unused_element, unnecessary_cast


class ManagementPolicyRuleFiltersMatchBlobIndexTag {
  /// The filter tag name used for tag based filtering for blob objects.
  final String name;
  /// The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  final String? operation;
  /// The filter tag value used for tag based filtering for blob objects.
  final String value;

  /// Creates a new [ManagementPolicyRuleFiltersMatchBlobIndexTag].
  /// [name] The filter tag name used for tag based filtering for blob objects.
  /// [operation] The comparison operator which is used for object comparison and filtering. Possible value is `==`. Defaults to `==`.
  /// [value] The filter tag value used for tag based filtering for blob objects.
  ManagementPolicyRuleFiltersMatchBlobIndexTag({
    required this.name,
    this.operation,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operation': ?operation,
      'value': value,
    };
  }

  factory ManagementPolicyRuleFiltersMatchBlobIndexTag.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyRuleFiltersMatchBlobIndexTag(
      name: map['name'] as String,
      operation: map['operation'] == null ? null : map['operation'] as String,
      value: map['value'] as String,
    );
  }
}

