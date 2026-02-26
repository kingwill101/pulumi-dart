// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_copy_value_entry/log_transformer_transformer_config_copy_value_entry.dart';

class LogTransformerTransformerConfigCopyValue {
  /// Objects containing the information about the values to copy to the log event. You must include at least one entry, and five at most. See <span pulumi-lang-nodejs="`copyValue`" pulumi-lang-dotnet="`CopyValue`" pulumi-lang-go="`copyValue`" pulumi-lang-python="`copy_value`" pulumi-lang-yaml="`copyValue`" pulumi-lang-java="`copyValue`">`copy_value`</span> <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> below for details.
  final List<LogTransformerTransformerConfigCopyValueEntry> entries;

  LogTransformerTransformerConfigCopyValue({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigCopyValueEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigCopyValue.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigCopyValue(
      entries: Input.decodeList<LogTransformerTransformerConfigCopyValueEntry>(
          map['entries'],
          (value) => LogTransformerTransformerConfigCopyValueEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
