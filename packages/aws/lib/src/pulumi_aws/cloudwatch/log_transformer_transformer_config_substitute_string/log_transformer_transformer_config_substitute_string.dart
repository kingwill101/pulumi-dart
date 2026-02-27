// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_substitute_string_entry/log_transformer_transformer_config_substitute_string_entry.dart';

class LogTransformerTransformerConfigSubstituteString {
  /// Objects containing the information about the fields to substitute. You must include at least one entry, and ten at most. See `substitute_string` `entry` below for details.
  final List<LogTransformerTransformerConfigSubstituteStringEntry> entries;

  LogTransformerTransformerConfigSubstituteString({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigSubstituteStringEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigSubstituteString.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSubstituteString(
      entries: Input.decodeList<
              LogTransformerTransformerConfigSubstituteStringEntry>(
          map['entries'],
          (value) =>
              LogTransformerTransformerConfigSubstituteStringEntry.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
