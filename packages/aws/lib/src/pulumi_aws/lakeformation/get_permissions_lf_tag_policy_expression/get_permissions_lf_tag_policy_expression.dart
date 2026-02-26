// ignore_for_file: unused_element, unnecessary_cast

class GetPermissionsLfTagPolicyExpression {
  /// Key-name of an LF-Tag.
  final String key;

  /// List of possible values of an LF-Tag.
  final List<String> values;

  GetPermissionsLfTagPolicyExpression({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory GetPermissionsLfTagPolicyExpression.fromMap(
      Map<String, dynamic> map) {
    return GetPermissionsLfTagPolicyExpression(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
