// ignore_for_file: unused_element, unnecessary_cast

class LfTagExpressionExpression {
  /// The key-name for the LF-Tag.
  final String tagKey;

  /// A list of possible values for the LF-Tag
  final List<String> tagValues;

  /// Creates a new [LfTagExpressionExpression].
  /// [tagKey] The key-name for the LF-Tag.
  /// [tagValues] A list of possible values for the LF-Tag
  LfTagExpressionExpression({required this.tagKey, required this.tagValues});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tagKey': tagKey, 'tagValues': tagValues};
  }

  factory LfTagExpressionExpression.fromMap(Map<String, dynamic> map) {
    return LfTagExpressionExpression(
      tagKey: map['tagKey'] as String,
      tagValues: (map['tagValues'] as List).cast<String>(),
    );
  }
}
