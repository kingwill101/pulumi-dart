// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_phrase_matcher_args_doc}
/// Arguments for getPhraseMatcher.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_phrase_matcher_args_doc}
class GetPhraseMatcherArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> phraseMatcherId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPhraseMatcherArgs].
  /// [location] Required.
  /// [phraseMatcherId] Required.
  /// [project] Optional.
  GetPhraseMatcherArgs({
    required String location,
    required String phraseMatcherId,
    String? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      phraseMatcherId = pulumi.Input.asInput<String>(phraseMatcherId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'phraseMatcherId': phraseMatcherId,
      'project': ?project,
    };
  }

  factory GetPhraseMatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetPhraseMatcherArgs(
      location: map['location'] as String,
      phraseMatcherId: map['phraseMatcherId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

