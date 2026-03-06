// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LfTagExpressionExpression {
  /// The key-name for the LF-Tag.
  final pulumi.Input<String> tagKey;
  /// A list of possible values for the LF-Tag
  final pulumi.Input<List<String>> tagValues;

  /// Creates a new [LfTagExpressionExpression].
  /// [tagKey] The key-name for the LF-Tag.
  /// [tagValues] A list of possible values for the LF-Tag
  const LfTagExpressionExpression({
    required this.tagKey,
    required this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagKey': tagKey,
      'tagValues': tagValues,
    };
  }

  factory LfTagExpressionExpression.fromMap(Map<String, dynamic> map) {
    return LfTagExpressionExpression(
      tagKey: pulumi.Input.fromValue(map['tagKey'] as String),
      tagValues: pulumi.Input.fromValue((map['tagValues'] as List).cast<String>()),
    );
  }
}

