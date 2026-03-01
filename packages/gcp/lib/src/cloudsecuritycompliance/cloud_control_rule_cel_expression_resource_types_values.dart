// ignore_for_file: unused_element, unnecessary_cast

class CloudControlRuleCelExpressionResourceTypesValues {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlRuleCelExpressionResourceTypesValues].
  /// [values] The strings in the list.
  CloudControlRuleCelExpressionResourceTypesValues({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory CloudControlRuleCelExpressionResourceTypesValues.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlRuleCelExpressionResourceTypesValues(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
