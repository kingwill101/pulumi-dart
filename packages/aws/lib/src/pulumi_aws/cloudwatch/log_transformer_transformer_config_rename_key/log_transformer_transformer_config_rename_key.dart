// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_rename_key_entry/log_transformer_transformer_config_rename_key_entry.dart';

class LogTransformerTransformerConfigRenameKey {
  /// Objects containing the information about the keys to rename. You must include at least one entry, and five at most. See <span pulumi-lang-nodejs="`renameKeys`" pulumi-lang-dotnet="`RenameKeys`" pulumi-lang-go="`renameKeys`" pulumi-lang-python="`rename_keys`" pulumi-lang-yaml="`renameKeys`" pulumi-lang-java="`renameKeys`">`rename_keys`</span> <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> below for details.
  final List<LogTransformerTransformerConfigRenameKeyEntry> entries;

  LogTransformerTransformerConfigRenameKey({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigRenameKeyEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigRenameKey.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigRenameKey(
      entries: Input.decodeList<LogTransformerTransformerConfigRenameKeyEntry>(
          map['entries'],
          (value) => LogTransformerTransformerConfigRenameKeyEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
