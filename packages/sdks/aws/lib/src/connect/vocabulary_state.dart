// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vocabulary resources.
class VocabularyState {
  /// The Amazon Resource Name (ARN) of the vocabulary.
  final pulumi.Input<String>? arn;
  /// The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see [Create a custom vocabulary using a table](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table). Minimum length of `1`. Maximum length of `60000`.
  final pulumi.Input<String>? content;
  /// The reason why the custom vocabulary was not created.
  final pulumi.Input<String>? failureReason;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see [What is Amazon Transcribe?](https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html). Valid Values are `ar-AE`, `de-CH`, `de-DE`, `en-AB`, `en-AU`, `en-GB`, `en-IE`, `en-IN`, `en-US`, `en-WL`, `es-ES`, `es-US`, `fr-CA`, `fr-FR`, `hi-IN`, `it-IT`, `ja-JP`, `ko-KR`, `pt-BR`, `pt-PT`, `zh-CN`.
  final pulumi.Input<String>? languageCode;
  /// The timestamp when the custom vocabulary was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// A unique name of the custom vocabulary. Must not be more than 140 characters.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current state of the custom vocabulary. Valid values are `CREATION_IN_PROGRESS`, `ACTIVE`, `CREATION_FAILED`, `DELETE_IN_PROGRESS`.
  final pulumi.Input<String>? state;
  /// Tags to apply to the vocabulary. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The identifier of the custom vocabulary.
  final pulumi.Input<String>? vocabularyId;

  /// Creates a new [VocabularyState].
  /// [arn] The Amazon Resource Name (ARN) of the vocabulary.
  /// [content] The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see [Create a custom vocabulary using a table](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table). Minimum length of `1`. Maximum length of `60000`.
  /// [failureReason] The reason why the custom vocabulary was not created.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [languageCode] The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see [What is Amazon Transcribe?](https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html). Valid Values are `ar-AE`, `de-CH`, `de-DE`, `en-AB`, `en-AU`, `en-GB`, `en-IE`, `en-IN`, `en-US`, `en-WL`, `es-ES`, `es-US`, `fr-CA`, `fr-FR`, `hi-IN`, `it-IT`, `ja-JP`, `ko-KR`, `pt-BR`, `pt-PT`, `zh-CN`.
  /// [lastModifiedTime] The timestamp when the custom vocabulary was last modified.
  /// [name] A unique name of the custom vocabulary. Must not be more than 140 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The current state of the custom vocabulary. Valid values are `CREATION_IN_PROGRESS`, `ACTIVE`, `CREATION_FAILED`, `DELETE_IN_PROGRESS`.
  /// [tags] Tags to apply to the vocabulary. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vocabularyId] The identifier of the custom vocabulary.
  VocabularyState({
    this.arn,
    this.content,
    this.failureReason,
    this.instanceId,
    this.languageCode,
    this.lastModifiedTime,
    this.name,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.vocabularyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'content': ?content,
      'failureReason': ?failureReason,
      'instanceId': ?instanceId,
      'languageCode': ?languageCode,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vocabularyId': ?vocabularyId,
    };
  }

  factory VocabularyState.fromMap(Map<String, dynamic> map) {
    return VocabularyState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      content: map['content'] == null ? null : ((map['content'] as String).input()).input(),
      failureReason: map['failureReason'] == null ? null : ((map['failureReason'] as String).input()).input(),
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : ((map['lastModifiedTime'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      state: map['state'] == null ? null : ((map['state'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vocabularyId: map['vocabularyId'] == null ? null : ((map['vocabularyId'] as String).input()).input(),
    );
  }
}

