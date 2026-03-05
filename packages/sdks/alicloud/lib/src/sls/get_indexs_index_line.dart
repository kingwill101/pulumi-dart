// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexsIndexLine {
  /// Is case sensitive.
  final pulumi.Input<bool> caseSensitive;
  /// Does it include Chinese.
  final pulumi.Input<bool> chn;
  /// List of excluded fields.
  final pulumi.Input<List<String>> excludeKeys;
  /// Include field list.
  final pulumi.Input<List<String>> includeKeys;
  /// Delimiter.
  final pulumi.Input<List<String>> tokens;

  /// Creates a new [GetIndexsIndexLine].
  /// [caseSensitive] Is case sensitive.
  /// [chn] Does it include Chinese.
  /// [excludeKeys] List of excluded fields.
  /// [includeKeys] Include field list.
  /// [tokens] Delimiter.
  GetIndexsIndexLine({
    required this.caseSensitive,
    required this.chn,
    required this.excludeKeys,
    required this.includeKeys,
    required this.tokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'chn': chn,
      'excludeKeys': excludeKeys,
      'includeKeys': includeKeys,
      'tokens': tokens,
    };
  }

  factory GetIndexsIndexLine.fromMap(Map<String, dynamic> map) {
    return GetIndexsIndexLine(
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      chn: pulumi.Input.fromValue(map['chn'] as bool),
      excludeKeys: pulumi.Input.fromValue((map['excludeKeys'] as List).cast<String>()),
      includeKeys: pulumi.Input.fromValue((map['includeKeys'] as List).cast<String>()),
      tokens: pulumi.Input.fromValue((map['tokens'] as List).cast<String>()),
    );
  }
}

