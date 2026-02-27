// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPhraseSet.
class GetPhraseSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> phraseSetId;
  final pulumi.Input<String>? project;

  GetPhraseSetArgs({
    required this.location,
    required this.phraseSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['phraseSetId'] = phraseSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPhraseSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPhraseSetArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      phraseSetId: pulumi.Input.asInput<String>(map['phraseSetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
