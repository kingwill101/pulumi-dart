// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigTrimString {
  /// Specifies the keys of the fields to trim.
  final List<String> withKeys;

  /// Creates a new [LogTransformerTransformerConfigTrimString].
  /// [withKeys] Specifies the keys of the fields to trim.
  LogTransformerTransformerConfigTrimString({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['withKeys'] = withKeys;
    return map;
  }

  factory LogTransformerTransformerConfigTrimString.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigTrimString(
      withKeys: (map['withKeys'] as List).cast<String>(),
    );
  }
}
