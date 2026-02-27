import 'package:pulumi/pulumi.dart';
import 'vocabulary_args2.dart';

/// Resource for managing an AWS Transcribe Vocabulary.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe Vocabulary using the `vocabulary_name`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/vocabulary:Vocabulary example example-name
/// ```
class Vocabulary2 extends CustomResource {
  /// ARN of the Vocabulary.
  late final Output<String> arn;

  /// Generated download URI.
  late final Output<String> downloadUri;

  /// The language code you selected for your vocabulary.
  late final Output<String> languageCode;

  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_file_uri`
  late final Output<List<String>?> phrases;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the Vocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth `phrases`.
  late final Output<String> vocabularyFileUri;

  /// The name of the Vocabulary.
  ///
  /// The following arguments are optional:
  late final Output<String> vocabularyName;

  Vocabulary2(
    String name, {
    VocabularyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/vocabulary:Vocabulary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.downloadUri = registerOutput<String>('downloadUri');
    this.languageCode = registerOutput<String>('languageCode');
    this.phrases = registerOutput<List<String>?>('phrases');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vocabularyFileUri = registerOutput<String>('vocabularyFileUri');
    this.vocabularyName = registerOutput<String>('vocabularyName');
  }
}
