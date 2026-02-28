// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transcribe_vocabulary_vocabulary_args_doc}
/// The set of arguments for Vocabulary.
/// {@endtemplate}
/// {@macro pulumi_transcribe_vocabulary_vocabulary_args_doc}
class VocabularyArgs {
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

  /// Creates a new [VocabularyArgs].
  /// [languageCode] The language code you selected for your vocabulary.
  /// [phrases] A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vocabularyFileUri] The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  /// [vocabularyName] The name of the Vocabulary.
  VocabularyArgs({
    required String languageCode,
    List<String>? phrases,
    String? region,
    Map<String, String>? tags,
    String? vocabularyFileUri,
    required String vocabularyName,
  })  : languageCode = pulumi.Input.asInput<String>(languageCode),
        phrases = pulumi.Input.asOptionalInput<List<String>>(phrases),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vocabularyFileUri =
            pulumi.Input.asOptionalInput<String>(vocabularyFileUri),
        vocabularyName = pulumi.Input.asInput<String>(vocabularyName);

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

  factory VocabularyArgs.fromMap(Map<String, dynamic> map) {
    return VocabularyArgs(
      languageCode: map['languageCode'] as String,
      phrases: map['phrases'] == null
          ? null
          : (map['phrases'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vocabularyFileUri: map['vocabularyFileUri'] == null
          ? null
          : map['vocabularyFileUri'] as String,
      vocabularyName: map['vocabularyName'] as String,
    );
  }
}
