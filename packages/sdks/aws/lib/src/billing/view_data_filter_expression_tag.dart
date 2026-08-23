// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ViewDataFilterExpressionTag {
  /// Key of the tag.
  final pulumi.Input<String> key;
  /// List of values for the tag.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ViewDataFilterExpressionTag].
  /// [key] Key of the tag.
  /// [values] List of values for the tag.
  const ViewDataFilterExpressionTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory ViewDataFilterExpressionTag.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
