// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigSplitStringEntry {
  /// Specifies the separator characters to split the string entry on.
  final pulumi.Input<String> delimiter;

  /// Specifies the key to modify.
  final pulumi.Input<String> source;

  /// Creates a new [LogTransformerTransformerConfigSplitStringEntry].
  /// [delimiter] Specifies the separator characters to split the string entry on.
  /// [source] Specifies the key to modify.
  LogTransformerTransformerConfigSplitStringEntry({
    required this.delimiter,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'delimiter': delimiter, 'source': source};
  }

  factory LogTransformerTransformerConfigSplitStringEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogTransformerTransformerConfigSplitStringEntry(
      delimiter: pulumi.Input.fromValue(map['delimiter'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
