// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPhraseSet.
class GetPhraseSetArgs {
  final Input<String> location;
  final Input<String> phraseSetId;
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      phraseSetId: Input.asInput<String>(map['phraseSetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
