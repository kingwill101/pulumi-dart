// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexLine {
  /// Is case sensitive
  final pulumi.Input<bool> caseSensitive;
  /// Does it include Chinese
  final pulumi.Input<bool> chn;
  /// List of excluded fields
  final pulumi.Input<List<String>>? excludeKeys;
  /// Include field list
  final pulumi.Input<List<String>>? includeKeys;
  /// Delimiter
  final pulumi.Input<List<String>> tokens;

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
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      chn: pulumi.Input.fromValue(map['chn'] as bool),
      excludeKeys: (() { final guardedValue = map['excludeKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeKeys: (() { final guardedValue = map['includeKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tokens: pulumi.Input.fromValue((map['tokens'] as List).cast<String>()),
    );
  }
}

