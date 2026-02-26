// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_split_string_entry/log_transformer_transformer_config_split_string_entry.dart';

class LogTransformerTransformerConfigSplitString {
  /// Objects containing the information about the fields to split. You must include at least one entry, and ten at most. See <span pulumi-lang-nodejs="`splitString`" pulumi-lang-dotnet="`SplitString`" pulumi-lang-go="`splitString`" pulumi-lang-python="`split_string`" pulumi-lang-yaml="`splitString`" pulumi-lang-java="`splitString`">`split_string`</span> <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> below for details.
  final List<LogTransformerTransformerConfigSplitStringEntry> entries;

  LogTransformerTransformerConfigSplitString({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigSplitStringEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigSplitString.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSplitString(
      entries:
          Input.decodeList<LogTransformerTransformerConfigSplitStringEntry>(
              map['entries'],
              (value) =>
                  LogTransformerTransformerConfigSplitStringEntry.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
