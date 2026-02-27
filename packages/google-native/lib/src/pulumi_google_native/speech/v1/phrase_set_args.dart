// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'phrase.dart';

/// The set of arguments for PhraseSet.
class PhraseSetArgs {
  /// Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  final pulumi.Input<double>? boost;
  final pulumi.Input<String>? location;

  /// The resource name of the phrase set.
  final pulumi.Input<String>? name;

  /// The ID to use for the phrase set, which will become the final component of the phrase set's resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.
  final pulumi.Input<String> phraseSetId;

  /// A list of word and phrases.
  final pulumi.Input<List<Phrase>>? phrases;
  final pulumi.Input<String>? project;

  PhraseSetArgs({
    this.boost,
    this.location,
    this.name,
    required this.phraseSetId,
    this.phrases,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostValue = boost;
    if (boostValue != null) {
      map['boost'] = boostValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['phraseSetId'] = phraseSetId;
    final phrasesValue = phrases;
    if (phrasesValue != null) {
      map['phrases'] = pulumi.Input.mapOptionalInputValue<List<Phrase>,
              List<Map<String, dynamic>>>(
          phrasesValue,
          (value) => pulumi.Input.encodeList<Phrase, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PhraseSetArgs.fromMap(Map<String, dynamic> map) {
    return PhraseSetArgs(
      boost: pulumi.Input.asOptionalInput<double>(map['boost']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      phraseSetId: pulumi.Input.asInput<String>(map['phraseSetId']),
      phrases: pulumi.Input.asOptionalInput<List<Phrase>>(map['phrases']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
