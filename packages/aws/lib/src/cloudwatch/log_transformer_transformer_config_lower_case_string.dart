// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigLowerCaseString {
  /// Specifies the keys of the fields to convert to lowercase.
  final List<String> withKeys;

  /// Creates a new [LogTransformerTransformerConfigLowerCaseString].
  /// [withKeys] Specifies the keys of the fields to convert to lowercase.
  LogTransformerTransformerConfigLowerCaseString({required this.withKeys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'withKeys': withKeys};
  }

  factory LogTransformerTransformerConfigLowerCaseString.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogTransformerTransformerConfigLowerCaseString(
      withKeys: (map['withKeys'] as List).cast<String>(),
    );
  }
}
