// ignore_for_file: unused_element, unnecessary_cast

class LfTagExpressionExpression {
  /// The key-name for the LF-Tag.
  final String tagKey;

  /// A list of possible values for the LF-Tag
  final List<String> tagValues;

  LfTagExpressionExpression({
    required this.tagKey,
    required this.tagValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tagKey'] = tagKey;
    map['tagValues'] = tagValues;
    return map;
  }

  factory LfTagExpressionExpression.fromMap(Map<String, dynamic> map) {
    return LfTagExpressionExpression(
      tagKey: map['tagKey'] as String,
      tagValues: (map['tagValues'] as List).cast<String>(),
    );
  }
}
