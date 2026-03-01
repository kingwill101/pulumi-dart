// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_source_file.dart';

class RulesetSource {
  /// `File` set constituting the `Source` bundle.
  final List<RulesetSourceFile> files;

  /// `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS
  ///
  /// - - -
  final String? language;

  /// Creates a new [RulesetSource].
  /// [files] `File` set constituting the `Source` bundle.
  /// [language] `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS
  RulesetSource({required this.files, this.language});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.encodeList<RulesetSourceFile, Map<String, dynamic>>(
        files,
        (value) => value.toMap(),
      ),
      'language': ?language,
    };
  }

  factory RulesetSource.fromMap(Map<String, dynamic> map) {
    return RulesetSource(
      files: pulumi.Input.decodeList<RulesetSourceFile>(
        map['files'],
        (value) =>
            RulesetSourceFile.fromMap((value as Map).cast<String, dynamic>()),
      ),
      language: map['language'] == null ? null : map['language'] as String,
    );
  }
}
