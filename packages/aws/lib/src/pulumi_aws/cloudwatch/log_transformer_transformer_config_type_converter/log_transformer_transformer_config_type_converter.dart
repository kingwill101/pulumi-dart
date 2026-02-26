// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_type_converter_entry/log_transformer_transformer_config_type_converter_entry.dart';

class LogTransformerTransformerConfigTypeConverter {
  /// Objects containing the information about the fields to change the type of. You must include at least one entry, and five at most. See <span pulumi-lang-nodejs="`typeConverter`" pulumi-lang-dotnet="`TypeConverter`" pulumi-lang-go="`typeConverter`" pulumi-lang-python="`type_converter`" pulumi-lang-yaml="`typeConverter`" pulumi-lang-java="`typeConverter`">`type_converter`</span> <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> below for details.
  final List<LogTransformerTransformerConfigTypeConverterEntry> entries;

  LogTransformerTransformerConfigTypeConverter({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigTypeConverterEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigTypeConverter.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigTypeConverter(
      entries:
          Input.decodeList<LogTransformerTransformerConfigTypeConverterEntry>(
              map['entries'],
              (value) =>
                  LogTransformerTransformerConfigTypeConverterEntry.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
