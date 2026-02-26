// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigLowerCaseString {
  /// Specifies the keys of the fields to convert to lowercase.
  final List<String> withKeys;

  LogTransformerTransformerConfigLowerCaseString({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['withKeys'] = withKeys;
    return map;
  }

  factory LogTransformerTransformerConfigLowerCaseString.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigLowerCaseString(
      withKeys: (map['withKeys'] as List).cast<String>(),
    );
  }
}
