// ignore_for_file: unused_element, unnecessary_cast

class RestoreTestingSelectionProtectedResourceConditionsStringNotEqual {
  /// The Tag name, must start with one of the following prefixes: [aws:ResourceTag/] with a Minimum length of 1. Maximum length of 128, and can contain characters that are letters, white space, and numbers that can be represented in UTF-8 and the following characters: `+ - = . _ : /`.
  final String key;

  /// The value of the Tag. Maximum length of 256.
  final String value;

  RestoreTestingSelectionProtectedResourceConditionsStringNotEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory RestoreTestingSelectionProtectedResourceConditionsStringNotEqual.fromMap(
      Map<String, dynamic> map) {
    return RestoreTestingSelectionProtectedResourceConditionsStringNotEqual(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
