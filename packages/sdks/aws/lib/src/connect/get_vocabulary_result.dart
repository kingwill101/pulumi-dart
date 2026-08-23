// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVocabulary.
class GetVocabularyResult {
  /// The Amazon Resource Name (ARN) of the Vocabulary.
  final String arn;
  /// The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see [Create a custom vocabulary using a table](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table).
  final String content;
  /// The reason why the custom vocabulary was not created.
  final String failureReason;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  /// The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see [What is Amazon Transcribe?](https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html). Valid Values are `ar-AE`, `de-CH`, `de-DE`, `en-AB`, `en-AU`, `en-GB`, `en-IE`, `en-IN`, `en-US`, `en-WL`, `es-ES`, `es-US`, `fr-CA`, `fr-FR`, `hi-IN`, `it-IT`, `ja-JP`, `ko-KR`, `pt-BR`, `pt-PT`, `zh-CN`.
  final String languageCode;
  /// The timestamp when the custom vocabulary was last modified.
  final String lastModifiedTime;
  final String name;
  final String region;
  /// The current state of the custom vocabulary. Valid values are `CREATION_IN_PROGRESS`, `ACTIVE`, `CREATION_FAILED`, `DELETE_IN_PROGRESS`.
  final String state;
  /// A map of tags to assign to the Vocabulary.
  final Map<String, String> tags;
  /// The identifier of the custom vocabulary.
  final String vocabularyId;

  /// Creates a new [GetVocabularyResult].
  /// [arn] The Amazon Resource Name (ARN) of the Vocabulary.
  /// [content] The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see [Create a custom vocabulary using a table](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table).
  /// [failureReason] The reason why the custom vocabulary was not created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [languageCode] The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see [What is Amazon Transcribe?](https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html). Valid Values are `ar-AE`, `de-CH`, `de-DE`, `en-AB`, `en-AU`, `en-GB`, `en-IE`, `en-IN`, `en-US`, `en-WL`, `es-ES`, `es-US`, `fr-CA`, `fr-FR`, `hi-IN`, `it-IT`, `ja-JP`, `ko-KR`, `pt-BR`, `pt-PT`, `zh-CN`.
  /// [lastModifiedTime] The timestamp when the custom vocabulary was last modified.
  /// [name] Required.
  /// [region] Required.
  /// [state] The current state of the custom vocabulary. Valid values are `CREATION_IN_PROGRESS`, `ACTIVE`, `CREATION_FAILED`, `DELETE_IN_PROGRESS`.
  /// [tags] A map of tags to assign to the Vocabulary.
  /// [vocabularyId] The identifier of the custom vocabulary.
  const GetVocabularyResult({
    required this.arn,
    required this.content,
    required this.failureReason,
    required this.id,
    required this.instanceId,
    required this.languageCode,
    required this.lastModifiedTime,
    required this.name,
    required this.region,
    required this.state,
    required this.tags,
    required this.vocabularyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'content': content,
      'failureReason': failureReason,
      'id': id,
      'instanceId': instanceId,
      'languageCode': languageCode,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'region': region,
      'state': state,
      'tags': tags,
      'vocabularyId': vocabularyId,
    };
  }

  factory GetVocabularyResult.fromMap(Map<String, dynamic> map) {
    return GetVocabularyResult(
      arn: map['arn'] as String,
      content: map['content'] as String,
      failureReason: map['failureReason'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      languageCode: map['languageCode'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vocabularyId: map['vocabularyId'] as String,
    );
  }
}
