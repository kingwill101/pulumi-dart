// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigDeleteKey {
  /// Specifies the keys to be deleted.
  final List<String> withKeys;

  /// Creates a new [LogTransformerTransformerConfigDeleteKey].
  /// [withKeys] Specifies the keys to be deleted.
  LogTransformerTransformerConfigDeleteKey({
    required this.withKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['withKeys'] = withKeys;
    return map;
  }

  factory LogTransformerTransformerConfigDeleteKey.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigDeleteKey(
      withKeys: (map['withKeys'] as List).cast<String>(),
    );
  }
}
