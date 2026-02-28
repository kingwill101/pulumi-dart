// ignore_for_file: unused_element, unnecessary_cast

class CloudControlRuleCelExpressionResourceTypesValues {
  /// The strings in the list.
  final List<String> values;

  /// Creates a new [CloudControlRuleCelExpressionResourceTypesValues].
  /// [values] The strings in the list.
  CloudControlRuleCelExpressionResourceTypesValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory CloudControlRuleCelExpressionResourceTypesValues.fromMap(
      Map<String, dynamic> map) {
    return CloudControlRuleCelExpressionResourceTypesValues(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
