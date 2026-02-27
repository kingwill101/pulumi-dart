// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVocabulary.
class GetVocabularyArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific Vocabulary by name
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the Vocabulary.
  final pulumi.Input<Map<String, String>>? tags;

  /// Returns information on a specific Vocabulary by Vocabulary id
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `vocabulary_id` is required.
  final pulumi.Input<String>? vocabularyId;

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
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyId: pulumi.Input.asOptionalInput<String>(map['vocabularyId']),
    );
  }
}
