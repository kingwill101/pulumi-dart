// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_add_keys_entry.dart';

class LogTransformerTransformerConfigAddKeys {
  /// Objects containing the information about the keys to add to the log event. You must include at least one entry, and five at most. See `add_keys` `entry` below for details.
  final List<LogTransformerTransformerConfigAddKeysEntry> entries;

  /// Creates a new [LogTransformerTransformerConfigAddKeys].
  /// [entries] Objects containing the information about the keys to add to the log event. You must include at least one entry, and five at most. See `add_keys` `entry` below for details.
  LogTransformerTransformerConfigAddKeys({required this.entries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries':
          pulumi.Input.encodeList<
            LogTransformerTransformerConfigAddKeysEntry,
            Map<String, dynamic>
          >(entries, (value) => value.toMap()),
    };
  }

  factory LogTransformerTransformerConfigAddKeys.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogTransformerTransformerConfigAddKeys(
      entries:
          pulumi.Input.decodeList<LogTransformerTransformerConfigAddKeysEntry>(
            map['entries'],
            (value) => LogTransformerTransformerConfigAddKeysEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
