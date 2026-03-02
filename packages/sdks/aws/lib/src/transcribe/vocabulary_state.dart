// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vocabulary resources.
class VocabularyState {
  /// ARN of the Vocabulary.
  final pulumi.Input<String>? arn;
  /// Generated download URI.
  final pulumi.Input<String>? downloadUri;
  /// The language code you selected for your vocabulary.
  final pulumi.Input<String>? languageCode;
  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  final pulumi.Input<List<String>>? phrases;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  final pulumi.Input<String>? vocabularyFileUri;
  /// The name of the Vocabulary.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vocabularyName;

  /// Creates a new [VocabularyState].
  /// [arn] ARN of the Vocabulary.
  /// [downloadUri] Generated download URI.
  /// [languageCode] The language code you selected for your vocabulary.
  /// [phrases] A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vocabularyFileUri] The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  /// [vocabularyName] The name of the Vocabulary.
  VocabularyState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      downloadUri: map['downloadUri'] == null ? null : ((map['downloadUri'] as String).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      phrases: map['phrases'] == null ? null : (((map['phrases'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vocabularyFileUri: map['vocabularyFileUri'] == null ? null : ((map['vocabularyFileUri'] as String).input()).input(),
      vocabularyName: map['vocabularyName'] == null ? null : ((map['vocabularyName'] as String).input()).input(),
    );
  }
}

