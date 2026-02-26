// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Vocabulary.
class VocabularyArgs2 {
  /// The language code you selected for your vocabulary.
  final Input<String> languageCode;

  /// A list of terms to include in the vocabulary. Conflicts with <span pulumi-lang-nodejs="`vocabularyFileUri`" pulumi-lang-dotnet="`VocabularyFileUri`" pulumi-lang-go="`vocabularyFileUri`" pulumi-lang-python="`vocabulary_file_uri`" pulumi-lang-yaml="`vocabularyFileUri`" pulumi-lang-java="`vocabularyFileUri`">`vocabulary_file_uri`</span>
  final Input<List<String>>? phrases;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the Vocabulary. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth <span pulumi-lang-nodejs="`phrases`" pulumi-lang-dotnet="`Phrases`" pulumi-lang-go="`phrases`" pulumi-lang-python="`phrases`" pulumi-lang-yaml="`phrases`" pulumi-lang-java="`phrases`">`phrases`</span>.
  final Input<String>? vocabularyFileUri;

  /// The name of the Vocabulary.
  ///
  /// The following arguments are optional:
  final Input<String> vocabularyName;

  VocabularyArgs2({
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

  factory VocabularyArgs2.fromMap(Map<String, dynamic> map) {
    return VocabularyArgs2(
      languageCode: Input.asInput<String>(map['languageCode']),
      phrases: Input.asOptionalInput<List<String>>(map['phrases']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vocabularyFileUri:
          Input.asOptionalInput<String>(map['vocabularyFileUri']),
      vocabularyName: Input.asInput<String>(map['vocabularyName']),
    );
  }
}
