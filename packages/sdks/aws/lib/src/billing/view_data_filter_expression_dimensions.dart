// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ViewDataFilterExpressionDimensions {
  /// Key of the dimension. Possible values are `LINKED_ACCOUNT`.
  final pulumi.Input<String> key;
  /// List of metadata values that you can use to filter and group your results.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ViewDataFilterExpressionDimensions].
  /// [key] Key of the dimension. Possible values are `LINKED_ACCOUNT`.
  /// [values] List of metadata values that you can use to filter and group your results.
  const ViewDataFilterExpressionDimensions({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory ViewDataFilterExpressionDimensions.fromMap(Map<String, dynamic> map) {
    return ViewDataFilterExpressionDimensions(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

