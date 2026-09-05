// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vocabulary resources.
class VocabularyState {
  /// ARN of the Vocabulary.
  final pulumi.Input<String?>? arn;
  /// Generated download URI.
  final pulumi.Input<String?>? downloadUri;
  /// Language code you selected for your vocabulary.
  final pulumi.Input<String?>? languageCode;
  /// List of terms to include in the vocabulary. Conflicts with `vocabularyFileUri`
  final pulumi.Input<List<String>?>? phrases;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the Vocabulary. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  final pulumi.Input<String?>? vocabularyFileUri;
  /// Name of the Vocabulary.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? vocabularyName;

  /// Creates a new [VocabularyState].
  /// [arn] ARN of the Vocabulary.
  /// [downloadUri] Generated download URI.
  /// [languageCode] Language code you selected for your vocabulary.
  /// [phrases] List of terms to include in the vocabulary. Conflicts with `vocabularyFileUri`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the Vocabulary. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vocabularyFileUri] Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  /// [vocabularyName] Name of the Vocabulary.
  const VocabularyState({
    this.arn,
    this.downloadUri,
    this.languageCode,
    this.phrases,
    this.region,
    this.tags,
    this.tagsAll,
    this.vocabularyFileUri,
    this.vocabularyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'downloadUri': ?downloadUri,
      'languageCode': ?languageCode,
      'phrases': ?phrases,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vocabularyFileUri': ?vocabularyFileUri,
      'vocabularyName': ?vocabularyName,
    };
  }

  factory VocabularyState.fromMap(Map<String, dynamic> map) {
    return VocabularyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      downloadUri: (() { final guardedValue = map['downloadUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phrases: (() { final guardedValue = map['phrases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vocabularyFileUri: (() { final guardedValue = map['vocabularyFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vocabularyName: (() { final guardedValue = map['vocabularyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
