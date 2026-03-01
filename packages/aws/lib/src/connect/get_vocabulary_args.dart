// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_vocabulary_get_vocabulary_args_doc}
/// Arguments for getVocabulary.
/// {@endtemplate}
/// {@macro pulumi_connect_get_vocabulary_get_vocabulary_args_doc}
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

  /// Creates a new [GetVocabularyArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Vocabulary by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the Vocabulary.
  /// [vocabularyId] Returns information on a specific Vocabulary by Vocabulary id
  GetVocabularyArgs({
    required String instanceId,
    String? name,
    String? region,
    Map<String, String>? tags,
    String? vocabularyId,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vocabularyId = pulumi.Input.asOptionalInput<String>(vocabularyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'vocabularyId': ?vocabularyId,
    };
  }

  factory GetVocabularyArgs.fromMap(Map<String, dynamic> map) {
    return GetVocabularyArgs(
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vocabularyId: map['vocabularyId'] == null
          ? null
          : map['vocabularyId'] as String,
    );
  }
}
