// ignore_for_file: unused_element, unnecessary_cast

class PermissionsLfTagPolicyExpression {
  /// The key-name of an LF-Tag.
  final String key;

  /// A list of possible values of an LF-Tag.
  final List<String> values;

  PermissionsLfTagPolicyExpression({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory PermissionsLfTagPolicyExpression.fromMap(Map<String, dynamic> map) {
    return PermissionsLfTagPolicyExpression(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
