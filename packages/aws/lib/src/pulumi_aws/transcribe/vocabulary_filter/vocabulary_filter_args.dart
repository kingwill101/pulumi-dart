// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VocabularyFilter.
class VocabularyFilterArgs {
  /// The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final Input<String> languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the VocabularyFilter. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with <span pulumi-lang-nodejs="`words`" pulumi-lang-dotnet="`Words`" pulumi-lang-go="`words`" pulumi-lang-python="`words`" pulumi-lang-yaml="`words`" pulumi-lang-java="`words`">`words`</span> argument.
  final Input<String>? vocabularyFilterFileUri;

  /// The name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  final Input<String> vocabularyFilterName;

  /// A list of terms to include in the vocabulary. Conflicts with <span pulumi-lang-nodejs="`vocabularyFilterFileUri`" pulumi-lang-dotnet="`VocabularyFilterFileUri`" pulumi-lang-go="`vocabularyFilterFileUri`" pulumi-lang-python="`vocabulary_filter_file_uri`" pulumi-lang-yaml="`vocabularyFilterFileUri`" pulumi-lang-java="`vocabularyFilterFileUri`">`vocabulary_filter_file_uri`</span> argument.
  final Input<List<String>>? words;

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
      languageCode: Input.asInput<String>(map['languageCode']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyFilterFileUri:
          Input.asOptionalInput<String>(map['vocabularyFilterFileUri']),
      vocabularyFilterName: Input.asInput<String>(map['vocabularyFilterName']),
      words: Input.asOptionalInput<List<String>>(map['words']),
    );
  }
}
