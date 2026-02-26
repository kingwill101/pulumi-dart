// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigUpperCaseString {
  /// Specifies the keys of the fields to convert to uppercase.
  final List<String> withKeys;

  LogTransformerTransformerConfigUpperCaseString({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['withKeys'] = withKeys;
    return map;
  }

  factory LogTransformerTransformerConfigUpperCaseString.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigUpperCaseString(
      withKeys: (map['withKeys'] as List).cast<String>(),
    );
  }
}
