// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPermissionsLfTagPolicyExpression {
  /// Key-name of an LF-Tag.
  final pulumi.Input<String> key;
  /// List of possible values of an LF-Tag.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetPermissionsLfTagPolicyExpression].
  /// [key] Key-name of an LF-Tag.
  /// [values] List of possible values of an LF-Tag.
  GetPermissionsLfTagPolicyExpression({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetPermissionsLfTagPolicyExpression.fromMap(Map<String, dynamic> map) {
    return GetPermissionsLfTagPolicyExpression(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

