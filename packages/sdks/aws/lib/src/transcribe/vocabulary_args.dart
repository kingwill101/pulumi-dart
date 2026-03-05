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
    required this.languageCode,
    this.phrases,
    this.region,
    this.tags,
    this.vocabularyFileUri,
    required this.vocabularyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'phrases': ?phrases,
      'region': ?region,
      'tags': ?tags,
      'vocabularyFileUri': ?vocabularyFileUri,
      'vocabularyName': vocabularyName,
    };
  }

  factory VocabularyArgs.fromMap(Map<String, dynamic> map) {
    return VocabularyArgs(
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      phrases: (() { final guardedValue = map['phrases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vocabularyFileUri: (() { final guardedValue = map['vocabularyFileUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vocabularyName: pulumi.Input.fromValue(map['vocabularyName'] as String),
    );
  }
}

