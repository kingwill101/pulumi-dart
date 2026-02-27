// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPhraseMatcher.
class GetPhraseMatcherArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> phraseMatcherId;
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      phraseMatcherId: pulumi.Input.asInput<String>(map['phraseMatcherId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
