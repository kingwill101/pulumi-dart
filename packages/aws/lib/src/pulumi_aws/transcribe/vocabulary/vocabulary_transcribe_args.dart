// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Vocabulary.
class VocabularyTranscribeArgs {
  /// The language code you selected for your vocabulary.
  final pulumi.Input<String> languageCode;

  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  final pulumi.Input<List<String>>? phrases;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  final pulumi.Input<String>? vocabularyFileUri;

  /// The name of the Vocabulary.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vocabularyName;

  VocabularyTranscribeArgs({
    required this.languageCode,
    this.phrases,
    this.region,
    this.tags,
    this.vocabularyFileUri,
    required this.vocabularyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['languageCode'] = languageCode;
    final phrasesValue = phrases;
    if (phrasesValue != null) {
      map['phrases'] = phrasesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vocabularyFileUriValue = vocabularyFileUri;
    if (vocabularyFileUriValue != null) {
      map['vocabularyFileUri'] = vocabularyFileUriValue;
    }
    map['vocabularyName'] = vocabularyName;
    return map;
  }

  factory VocabularyTranscribeArgs.fromMap(Map<String, dynamic> map) {
    return VocabularyTranscribeArgs(
      languageCode: pulumi.Input.asInput<String>(map['languageCode']),
      phrases: pulumi.Input.asOptionalInput<List<String>>(map['phrases']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyFileUri:
          pulumi.Input.asOptionalInput<String>(map['vocabularyFileUri']),
      vocabularyName: pulumi.Input.asInput<String>(map['vocabularyName']),
    );
  }
}
