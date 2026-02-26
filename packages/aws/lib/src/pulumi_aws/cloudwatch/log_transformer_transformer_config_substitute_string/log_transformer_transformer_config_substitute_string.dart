// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_substitute_string_entry/log_transformer_transformer_config_substitute_string_entry.dart';

class LogTransformerTransformerConfigSubstituteString {
  /// Objects containing the information about the fields to substitute. You must include at least one entry, and ten at most. See <span pulumi-lang-nodejs="`substituteString`" pulumi-lang-dotnet="`SubstituteString`" pulumi-lang-go="`substituteString`" pulumi-lang-python="`substitute_string`" pulumi-lang-yaml="`substituteString`" pulumi-lang-java="`substituteString`">`substitute_string`</span> <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> below for details.
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
