// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_split_string_entry.dart';

class LogTransformerTransformerConfigSplitString {
  /// Objects containing the information about the fields to split. You must include at least one entry, and ten at most. See `split_string` `entry` below for details.
  final List<LogTransformerTransformerConfigSplitStringEntry> entries;

  /// Creates a new [LogTransformerTransformerConfigSplitString].
  /// [entries] Objects containing the information about the fields to split. You must include at least one entry, and ten at most. See `split_string` `entry` below for details.
  LogTransformerTransformerConfigSplitString({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = pulumi.Input.encodeList<
        LogTransformerTransformerConfigSplitStringEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigSplitString.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSplitString(
      entries: pulumi.Input.decodeList<
              LogTransformerTransformerConfigSplitStringEntry>(
          map['entries'],
          (value) => LogTransformerTransformerConfigSplitStringEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
