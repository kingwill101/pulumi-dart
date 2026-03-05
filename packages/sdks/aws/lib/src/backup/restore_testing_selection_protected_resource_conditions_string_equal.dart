// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreTestingSelectionProtectedResourceConditionsStringEqual {
  /// The Tag name, must start with one of the following prefixes: [aws:ResourceTag/] with a Minimum length of 1. Maximum length of 128, and can contain characters that are letters, white space, and numbers that can be represented in UTF-8 and the following characters: `+ - = . _ : /`.
  final pulumi.Input<String> key;
  /// The value of the Tag. Maximum length of 256.
  final pulumi.Input<String> value;

  /// Creates a new [RestoreTestingSelectionProtectedResourceConditionsStringEqual].
  /// [key] The Tag name, must start with one of the following prefixes: [aws:ResourceTag/] with a Minimum length of 1. Maximum length of 128, and can contain characters that are letters, white space, and numbers that can be represented in UTF-8 and the following characters: `+ - = . _ : /`.
  /// [value] The value of the Tag. Maximum length of 256.
  RestoreTestingSelectionProtectedResourceConditionsStringEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory RestoreTestingSelectionProtectedResourceConditionsStringEqual.fromMap(Map<String, dynamic> map) {
    return RestoreTestingSelectionProtectedResourceConditionsStringEqual(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

