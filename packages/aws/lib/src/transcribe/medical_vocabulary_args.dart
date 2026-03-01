// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transcribe_medical_vocabulary_medical_vocabulary_args_doc}
/// The set of arguments for MedicalVocabulary.
/// {@endtemplate}
/// {@macro pulumi_transcribe_medical_vocabulary_medical_vocabulary_args_doc}
class MedicalVocabularyArgs {
  /// The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical.
  final pulumi.Input<String> languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the MedicalVocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary.
  final pulumi.Input<String> vocabularyFileUri;

  /// The name of the Medical Vocabulary.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vocabularyName;

  /// Creates a new [MedicalVocabularyArgs].
  /// [languageCode] The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the MedicalVocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vocabularyFileUri] The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary.
  /// [vocabularyName] The name of the Medical Vocabulary.
  MedicalVocabularyArgs({
    required String languageCode,
    String? region,
    Map<String, String>? tags,
    required String vocabularyFileUri,
    required String vocabularyName,
  }) : languageCode = pulumi.Input.asInput<String>(languageCode),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       vocabularyFileUri = pulumi.Input.asInput<String>(vocabularyFileUri),
       vocabularyName = pulumi.Input.asInput<String>(vocabularyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'region': ?region,
      'tags': ?tags,
      'vocabularyFileUri': vocabularyFileUri,
      'vocabularyName': vocabularyName,
    };
  }

  factory MedicalVocabularyArgs.fromMap(Map<String, dynamic> map) {
    return MedicalVocabularyArgs(
      languageCode: map['languageCode'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vocabularyFileUri: map['vocabularyFileUri'] as String,
      vocabularyName: map['vocabularyName'] as String,
    );
  }
}
