// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MedicalVocabulary resources.
class MedicalVocabularyState {
  /// ARN of the MedicalVocabulary.
  final pulumi.Input<String>? arn;
  /// Generated download URI.
  final pulumi.Input<String>? downloadUri;
  /// The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical.
  final pulumi.Input<String>? languageCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the MedicalVocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary.
  final pulumi.Input<String>? vocabularyFileUri;
  /// The name of the Medical Vocabulary.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vocabularyName;

  /// Creates a new [MedicalVocabularyState].
  /// [arn] ARN of the MedicalVocabulary.
  /// [downloadUri] Generated download URI.
  /// [languageCode] The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the MedicalVocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vocabularyFileUri] The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary.
  /// [vocabularyName] The name of the Medical Vocabulary.
  MedicalVocabularyState({
    this.arn,
    this.downloadUri,
    this.languageCode,
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
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vocabularyFileUri': ?vocabularyFileUri,
      'vocabularyName': ?vocabularyName,
    };
  }

  factory MedicalVocabularyState.fromMap(Map<String, dynamic> map) {
    return MedicalVocabularyState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      downloadUri: map['downloadUri'] == null ? null : (map['downloadUri'] as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vocabularyFileUri: map['vocabularyFileUri'] == null ? null : (map['vocabularyFileUri'] as String).input(),
      vocabularyName: map['vocabularyName'] == null ? null : (map['vocabularyName'] as String).input(),
    );
  }
}

