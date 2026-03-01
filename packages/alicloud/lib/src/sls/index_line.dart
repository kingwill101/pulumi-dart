// ignore_for_file: unused_element, unnecessary_cast


class IndexLine {
  /// Is case sensitive
  final bool caseSensitive;
  /// Does it include Chinese
  final bool chn;
  /// List of excluded fields
  final List<String>? excludeKeys;
  /// Include field list
  final List<String>? includeKeys;
  /// Delimiter
  final List<String> tokens;

  /// Creates a new [IndexLine].
  /// [caseSensitive] Is case sensitive
  /// [chn] Does it include Chinese
  /// [excludeKeys] List of excluded fields
  /// [includeKeys] Include field list
  /// [tokens] Delimiter
  IndexLine({
    required this.caseSensitive,
    required this.chn,
    this.excludeKeys,
    this.includeKeys,
    required this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'chn': chn,
      'excludeKeys': ?excludeKeys,
      'includeKeys': ?includeKeys,
      'tokens': tokens,
    };
  }

  factory IndexLine.fromMap(Map<String, dynamic> map) {
    return IndexLine(
      caseSensitive: map['caseSensitive'] as bool,
      chn: map['chn'] as bool,
      excludeKeys: map['excludeKeys'] == null ? null : (map['excludeKeys'] as List).cast<String>(),
      includeKeys: map['includeKeys'] == null ? null : (map['includeKeys'] as List).cast<String>(),
      tokens: (map['tokens'] as List).cast<String>(),
    );
  }
}

