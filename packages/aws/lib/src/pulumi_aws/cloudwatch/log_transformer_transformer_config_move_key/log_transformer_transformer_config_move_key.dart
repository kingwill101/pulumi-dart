// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_move_key_entry/log_transformer_transformer_config_move_key_entry.dart';

class LogTransformerTransformerConfigMoveKey {
  /// Objects containing the information about the keys to move to the log event. You must include at least one entry, and five at most. See <span pulumi-lang-nodejs="`moveKeys`" pulumi-lang-dotnet="`MoveKeys`" pulumi-lang-go="`moveKeys`" pulumi-lang-python="`move_keys`" pulumi-lang-yaml="`moveKeys`" pulumi-lang-java="`moveKeys`">`move_keys`</span> <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> below for details.
  final List<LogTransformerTransformerConfigMoveKeyEntry> entries;

  LogTransformerTransformerConfigMoveKey({
    required this.entries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entries'] = Input.encodeList<
        LogTransformerTransformerConfigMoveKeyEntry,
        Map<String, dynamic>>(entries, (value) => value.toMap());
    return map;
  }

  factory LogTransformerTransformerConfigMoveKey.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigMoveKey(
      entries: Input.decodeList<LogTransformerTransformerConfigMoveKeyEntry>(
          map['entries'],
          (value) => LogTransformerTransformerConfigMoveKeyEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
