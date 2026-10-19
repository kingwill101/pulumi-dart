// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreTestingSelectionProtectedResourceConditionsStringNotEqual {
  /// Tag name, must start with one of the following prefixes: [aws:ResourceTag/] with a Minimum length of 1. Maximum length of 128, and can contain characters that are letters, white space, and numbers that can be represented in UTF-8 and the following characters: `+ - = . _ : /`.
  final pulumi.Input<String> key;
  /// Value of the Tag. Maximum length of 256.
  final pulumi.Input<String> value;

  /// Creates a new [RestoreTestingSelectionProtectedResourceConditionsStringNotEqual].
  /// [key] Tag name, must start with one of the following prefixes: [aws:ResourceTag/] with a Minimum length of 1. Maximum length of 128, and can contain characters that are letters, white space, and numbers that can be represented in UTF-8 and the following characters: `+ - = . _ : /`.
  /// [value] Value of the Tag. Maximum length of 256.
  const RestoreTestingSelectionProtectedResourceConditionsStringNotEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory RestoreTestingSelectionProtectedResourceConditionsStringNotEqual.fromMap(Map<String, dynamic> map) {
    return RestoreTestingSelectionProtectedResourceConditionsStringNotEqual(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
