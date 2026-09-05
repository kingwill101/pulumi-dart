// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VocabularyFilter resources.
class VocabularyFilterState {
  /// ARN of the VocabularyFilter.
  final pulumi.Input<String?>? arn;
  /// Generated download URI.
  final pulumi.Input<String?>? downloadUri;
  /// Language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  final pulumi.Input<String?>? languageCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the VocabularyFilter. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  final pulumi.Input<String?>? vocabularyFilterFileUri;
  /// Name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? vocabularyFilterName;
  /// List of terms to include in the vocabulary. Conflicts with `vocabularyFilterFileUri` argument.
  final pulumi.Input<List<String>?>? words;

  /// Creates a new [VocabularyFilterState].
  /// [arn] ARN of the VocabularyFilter.
  /// [downloadUri] Generated download URI.
  /// [languageCode] Language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the VocabularyFilter. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vocabularyFilterFileUri] Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  /// [vocabularyFilterName] Name of the VocabularyFilter.
  /// [words] List of terms to include in the vocabulary. Conflicts with `vocabularyFilterFileUri` argument.
  const VocabularyFilterState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      downloadUri: (() { final guardedValue = map['downloadUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vocabularyFilterFileUri: (() { final guardedValue = map['vocabularyFilterFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vocabularyFilterName: (() { final guardedValue = map['vocabularyFilterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      words: (() { final guardedValue = map['words']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
