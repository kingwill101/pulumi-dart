// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_type_converter_entry.dart';

class LogTransformerTransformerConfigTypeConverter {
  /// Objects containing the information about the fields to change the type of. You must include at least one entry, and five at most. See `type_converter` `entry` below for details.
  final List<LogTransformerTransformerConfigTypeConverterEntry> entries;

  /// Creates a new [LogTransformerTransformerConfigTypeConverter].
  /// [entries] Objects containing the information about the fields to change the type of. You must include at least one entry, and five at most. See `type_converter` `entry` below for details.
  LogTransformerTransformerConfigTypeConverter({required this.entries});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries':
          pulumi.Input.encodeList<
            LogTransformerTransformerConfigTypeConverterEntry,
            Map<String, dynamic>
          >(entries, (value) => value.toMap()),
    };
  }

  factory LogTransformerTransformerConfigTypeConverter.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogTransformerTransformerConfigTypeConverter(
      entries:
          pulumi.Input.decodeList<
            LogTransformerTransformerConfigTypeConverterEntry
          >(
            map['entries'],
            (value) =>
                LogTransformerTransformerConfigTypeConverterEntry.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
