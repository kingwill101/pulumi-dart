// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPhraseMatcher.
class GetPhraseMatcherArgs {
  final Input<String> location;
  final Input<String> phraseMatcherId;
  final Input<String>? project;

  GetPhraseMatcherArgs({
    required this.location,
    required this.phraseMatcherId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['phraseMatcherId'] = phraseMatcherId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPhraseMatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetPhraseMatcherArgs(
      location: Input.asInput<String>(map['location']),
      phraseMatcherId: Input.asInput<String>(map['phraseMatcherId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
