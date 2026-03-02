// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VocabularyFilter resources.
class VocabularyFilterState {
  /// ARN of the VocabularyFilter.
  final pulumi.Input<String>? arn;
  /// Generated download URI.
  final pulumi.Input<String>? downloadUri;
  /// The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String>? languageCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the VocabularyFilter. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  final pulumi.Input<String>? vocabularyFilterFileUri;
  /// The name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vocabularyFilterName;
  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_filter_file_uri` argument.
  final pulumi.Input<List<String>>? words;

  /// Creates a new [VocabularyFilterState].
  /// [arn] ARN of the VocabularyFilter.
  /// [downloadUri] Generated download URI.
  /// [languageCode] The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the VocabularyFilter. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vocabularyFilterFileUri] The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  /// [vocabularyFilterName] The name of the VocabularyFilter.
  /// [words] A list of terms to include in the vocabulary. Conflicts with `vocabulary_filter_file_uri` argument.
  VocabularyFilterState({
    this.arn,
    this.downloadUri,
    this.languageCode,
    this.region,
    this.tags,
    this.tagsAll,
    this.vocabularyFilterFileUri,
    this.vocabularyFilterName,
    this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'downloadUri': ?downloadUri,
      'languageCode': ?languageCode,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vocabularyFilterFileUri': ?vocabularyFilterFileUri,
      'vocabularyFilterName': ?vocabularyFilterName,
      'words': ?words,
    };
  }

  factory VocabularyFilterState.fromMap(Map<String, dynamic> map) {
    return VocabularyFilterState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      downloadUri: map['downloadUri'] == null ? null : ((map['downloadUri'] as String).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vocabularyFilterFileUri: map['vocabularyFilterFileUri'] == null ? null : ((map['vocabularyFilterFileUri'] as String).input()).input(),
      vocabularyFilterName: map['vocabularyFilterName'] == null ? null : ((map['vocabularyFilterName'] as String).input()).input(),
      words: map['words'] == null ? null : (((map['words'] as List).cast<String>()).input()).input(),
    );
  }
}

