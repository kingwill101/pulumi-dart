// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vocabulary resources.
class VocabularyState {
  /// ARN of the Vocabulary.
  final pulumi.Input<String>? arn;
  /// Generated download URI.
  final pulumi.Input<String>? downloadUri;
  /// The language code you selected for your vocabulary.
  final pulumi.Input<String>? languageCode;
  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  final pulumi.Input<List<String>>? phrases;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  final pulumi.Input<String>? vocabularyFileUri;
  /// The name of the Vocabulary.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vocabularyName;

  /// Creates a new [VocabularyState].
  /// [arn] ARN of the Vocabulary.
  /// [downloadUri] Generated download URI.
  /// [languageCode] The language code you selected for your vocabulary.
  /// [phrases] A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [vocabularyFileUri] The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  /// [vocabularyName] The name of the Vocabulary.
  VocabularyState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? downloadUri,
    pulumi.Output<String>? languageCode,
    pulumi.Output<List<String>>? phrases,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vocabularyFileUri,
    pulumi.Output<String>? vocabularyName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      downloadUri = pulumi.Input.asOptionalInput<String>(downloadUri),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      phrases = pulumi.Input.asOptionalInput<List<String>>(phrases),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vocabularyFileUri = pulumi.Input.asOptionalInput<String>(vocabularyFileUri),
      vocabularyName = pulumi.Input.asOptionalInput<String>(vocabularyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'downloadUri': ?downloadUri,
      'languageCode': ?languageCode,
      'phrases': ?phrases,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vocabularyFileUri': ?vocabularyFileUri,
      'vocabularyName': ?vocabularyName,
    };
  }

  factory VocabularyState.fromMap(Map<String, dynamic> map) {
    return VocabularyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      downloadUri: map['downloadUri'] == null ? null : pulumi.Output.create<String>(map['downloadUri'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      phrases: map['phrases'] == null ? null : pulumi.Output.create<List<String>>((map['phrases'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vocabularyFileUri: map['vocabularyFileUri'] == null ? null : pulumi.Output.create<String>(map['vocabularyFileUri'] as String),
      vocabularyName: map['vocabularyName'] == null ? null : pulumi.Output.create<String>(map['vocabularyName'] as String),
    );
  }
}

