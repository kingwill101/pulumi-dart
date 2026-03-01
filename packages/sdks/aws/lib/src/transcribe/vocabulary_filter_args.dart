// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transcribe_vocabulary_filter_vocabulary_filter_args_doc}
/// The set of arguments for VocabularyFilter.
/// {@endtemplate}
/// {@macro pulumi_transcribe_vocabulary_filter_vocabulary_filter_args_doc}
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

  /// Creates a new [VocabularyFilterArgs].
  /// [languageCode] The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the VocabularyFilter. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vocabularyFilterFileUri] The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  /// [vocabularyFilterName] The name of the VocabularyFilter.
  /// [words] A list of terms to include in the vocabulary. Conflicts with `vocabulary_filter_file_uri` argument.
  VocabularyFilterArgs({
    required pulumi.Output<String> languageCode,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vocabularyFilterFileUri,
    required pulumi.Output<String> vocabularyFilterName,
    pulumi.Output<List<String>>? words,
  }) :
      languageCode = pulumi.Input.asInput<String>(languageCode),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vocabularyFilterFileUri = pulumi.Input.asOptionalInput<String>(vocabularyFilterFileUri),
      vocabularyFilterName = pulumi.Input.asInput<String>(vocabularyFilterName),
      words = pulumi.Input.asOptionalInput<List<String>>(words);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'region': ?region,
      'tags': ?tags,
      'vocabularyFilterFileUri': ?vocabularyFilterFileUri,
      'vocabularyFilterName': vocabularyFilterName,
      'words': ?words,
    };
  }

  factory VocabularyFilterArgs.fromMap(Map<String, dynamic> map) {
    return VocabularyFilterArgs(
      languageCode: pulumi.Output.create<String>(map['languageCode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vocabularyFilterFileUri: map['vocabularyFilterFileUri'] == null ? null : pulumi.Output.create<String>(map['vocabularyFilterFileUri'] as String),
      vocabularyFilterName: pulumi.Output.create<String>(map['vocabularyFilterName'] as String),
      words: map['words'] == null ? null : pulumi.Output.create<List<String>>((map['words'] as List).cast<String>()),
    );
  }
}

