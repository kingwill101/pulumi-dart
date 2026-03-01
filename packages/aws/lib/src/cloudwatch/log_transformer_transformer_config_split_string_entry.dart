// ignore_for_file: unused_element, unnecessary_cast


class LogTransformerTransformerConfigSplitStringEntry {
  /// Specifies the separator characters to split the string entry on.
  final String delimiter;
  /// Specifies the key to modify.
  final String source;

  /// Creates a new [LogTransformerTransformerConfigSplitStringEntry].
  /// [delimiter] Specifies the separator characters to split the string entry on.
  /// [source] Specifies the key to modify.
  LogTransformerTransformerConfigSplitStringEntry({
    required this.delimiter,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': delimiter,
      'source': source,
    };
  }

  factory LogTransformerTransformerConfigSplitStringEntry.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSplitStringEntry(
      delimiter: map['delimiter'] as String,
      source: map['source'] as String,
    );
  }
}

