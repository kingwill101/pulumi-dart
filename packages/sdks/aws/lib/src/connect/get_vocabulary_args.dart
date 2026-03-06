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
  /// &gt; **NOTE:** `instance_id` and one of either `name` or `vocabulary_id` is required.
  final pulumi.Input<String>? vocabularyId;

  /// Creates a new [GetVocabularyArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Vocabulary by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the Vocabulary.
  /// [vocabularyId] Returns information on a specific Vocabulary by Vocabulary id
  const GetVocabularyArgs({
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.vocabularyId,
  });

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
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vocabularyId: (() { final guardedValue = map['vocabularyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

