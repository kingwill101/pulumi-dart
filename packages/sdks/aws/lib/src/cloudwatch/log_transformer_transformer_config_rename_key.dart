// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_rename_key_entry.dart';

class LogTransformerTransformerConfigRenameKey {
  /// Objects containing the information about the keys to rename. You must include at least one entry, and five at most. See `rename_keys` `entry` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigRenameKeyEntry>> entries;

  /// Creates a new [LogTransformerTransformerConfigRenameKey].
  /// [entries] Objects containing the information about the keys to rename. You must include at least one entry, and five at most. See `rename_keys` `entry` below for details.
  LogTransformerTransformerConfigRenameKey({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.mapInputValue<List<LogTransformerTransformerConfigRenameKeyEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigRenameKeyEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogTransformerTransformerConfigRenameKey.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigRenameKey(
      entries: (pulumi.Input.decodeList<LogTransformerTransformerConfigRenameKeyEntry>(map['entries'], (value) => LogTransformerTransformerConfigRenameKeyEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

