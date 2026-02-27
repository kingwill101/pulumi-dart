// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VocabularyFilter.
class VocabularyFilterArgs {
  /// The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String> languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the VocabularyFilter. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  final pulumi.Input<String>? vocabularyFilterFileUri;

  /// The name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vocabularyFilterName;

  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_filter_file_uri` argument.
  final pulumi.Input<List<String>>? words;

  VocabularyFilterArgs({
    required this.languageCode,
    this.region,
    this.tags,
    this.vocabularyFilterFileUri,
    required this.vocabularyFilterName,
    this.words,
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
    final vocabularyFilterFileUriValue = vocabularyFilterFileUri;
    if (vocabularyFilterFileUriValue != null) {
      map['vocabularyFilterFileUri'] = vocabularyFilterFileUriValue;
    }
    map['vocabularyFilterName'] = vocabularyFilterName;
    final wordsValue = words;
    if (wordsValue != null) {
      map['words'] = wordsValue;
    }
    return map;
  }

  factory VocabularyFilterArgs.fromMap(Map<String, dynamic> map) {
    return VocabularyFilterArgs(
      languageCode: pulumi.Input.asInput<String>(map['languageCode']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyFilterFileUri:
          pulumi.Input.asOptionalInput<String>(map['vocabularyFilterFileUri']),
      vocabularyFilterName:
          pulumi.Input.asInput<String>(map['vocabularyFilterName']),
      words: pulumi.Input.asOptionalInput<List<String>>(map['words']),
    );
  }
}
