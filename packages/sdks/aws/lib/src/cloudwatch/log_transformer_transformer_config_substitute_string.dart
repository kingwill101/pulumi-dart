// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_substitute_string_entry.dart';

class LogTransformerTransformerConfigSubstituteString {
  /// Objects containing the information about the fields to substitute. You must include at least one entry, and ten at most. See `substituteString` `entry` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigSubstituteStringEntry>> entries;

  /// Creates a new [LogTransformerTransformerConfigSubstituteString].
  /// [entries] Objects containing the information about the fields to substitute. You must include at least one entry, and ten at most. See `substituteString` `entry` below for details.
  const LogTransformerTransformerConfigSubstituteString({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': pulumi.Input.mapInputValue<List<LogTransformerTransformerConfigSubstituteStringEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigSubstituteStringEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogTransformerTransformerConfigSubstituteString.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSubstituteString(
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<LogTransformerTransformerConfigSubstituteStringEntry>(map['entries']!, (value) => LogTransformerTransformerConfigSubstituteStringEntry.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
