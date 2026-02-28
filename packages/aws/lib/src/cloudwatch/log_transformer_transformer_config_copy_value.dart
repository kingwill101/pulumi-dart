// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_copy_value_entry.dart';

class LogTransformerTransformerConfigCopyValue {
  /// Objects containing the information about the values to copy to the log event. You must include at least one entry, and five at most. See `copy_value` `entry` below for details.
  final List<LogTransformerTransformerConfigCopyValueEntry> entries;

  /// Creates a new [LogTransformerTransformerConfigCopyValue].
  /// [entries] Objects containing the information about the values to copy to the log event. You must include at least one entry, and five at most. See `copy_value` `entry` below for details.
  LogTransformerTransformerConfigCopyValue({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = pulumi.Input.encodeList<
        LogTransformerTransformerConfigCopyValueEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigCopyValue.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigCopyValue(
      entries: pulumi.Input.decodeList<
              LogTransformerTransformerConfigCopyValueEntry>(
          map['entries'],
          (value) => LogTransformerTransformerConfigCopyValueEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
