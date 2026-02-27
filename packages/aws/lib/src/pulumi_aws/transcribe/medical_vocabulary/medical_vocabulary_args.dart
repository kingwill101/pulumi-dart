// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MedicalVocabulary.
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

  MedicalVocabularyArgs({
    required this.languageCode,
    this.region,
    this.tags,
    required this.vocabularyFileUri,
    required this.vocabularyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['languageCode'] = languageCode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vocabularyFileUri'] = vocabularyFileUri;
    map['vocabularyName'] = vocabularyName;
    return map;
  }

  factory MedicalVocabularyArgs.fromMap(Map<String, dynamic> map) {
    return MedicalVocabularyArgs(
      languageCode: pulumi.Input.asInput<String>(map['languageCode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyFileUri: pulumi.Input.asInput<String>(map['vocabularyFileUri']),
      vocabularyName: pulumi.Input.asInput<String>(map['vocabularyName']),
    );
  }
}
