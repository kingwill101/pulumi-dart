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
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`vocabularyId`" pulumi-lang-dotnet="`VocabularyId`" pulumi-lang-go="`vocabularyId`" pulumi-lang-python="`vocabulary_id`" pulumi-lang-yaml="`vocabularyId`" pulumi-lang-java="`vocabularyId`">`vocabulary_id`</span> is required.
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
