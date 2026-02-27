// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVocabulary.
class GetVocabularyArgs {
  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific Vocabulary by name
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the Vocabulary.
  final Input<Map<String, String>>? tags;

  /// Returns information on a specific Vocabulary by Vocabulary id
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `vocabulary_id` is required.
  final Input<String>? vocabularyId;

  GetVocabularyArgs({
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.vocabularyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vocabularyIdValue = vocabularyId;
    if (vocabularyIdValue != null) {
      map['vocabularyId'] = vocabularyIdValue;
    }
    return map;
  }

  factory GetVocabularyArgs.fromMap(Map<String, dynamic> map) {
    return GetVocabularyArgs(
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyId: Input.asOptionalInput<String>(map['vocabularyId']),
    );
  }
}
