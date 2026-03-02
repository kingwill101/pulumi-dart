// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_move_key_entry.dart';

class LogTransformerTransformerConfigMoveKey {
  /// Objects containing the information about the keys to move to the log event. You must include at least one entry, and five at most. See `move_keys` `entry` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigMoveKeyEntry>> entries;

  /// Creates a new [LogTransformerTransformerConfigMoveKey].
  /// [entries] Objects containing the information about the keys to move to the log event. You must include at least one entry, and five at most. See `move_keys` `entry` below for details.
  LogTransformerTransformerConfigMoveKey({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.mapInputValue<List<LogTransformerTransformerConfigMoveKeyEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigMoveKeyEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogTransformerTransformerConfigMoveKey.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigMoveKey(
      entries: (pulumi.Input.decodeList<LogTransformerTransformerConfigMoveKeyEntry>(map['entries'], (value) => LogTransformerTransformerConfigMoveKeyEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

