// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_add_keys_entry/log_transformer_transformer_config_add_keys_entry.dart';

class LogTransformerTransformerConfigAddKeys {
  /// Objects containing the information about the keys to add to the log event. You must include at least one entry, and five at most. See `add_keys` `entry` below for details.
  final List<LogTransformerTransformerConfigAddKeysEntry> entries;

  LogTransformerTransformerConfigAddKeys({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigAddKeysEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigAddKeys.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigAddKeys(
      entries: Input.decodeList<LogTransformerTransformerConfigAddKeysEntry>(
          map['entries'],
          (value) => LogTransformerTransformerConfigAddKeysEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
