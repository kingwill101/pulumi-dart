import 'package:pulumi/pulumi.dart';
import 'vocabulary_filter_args.dart';

/// Resource for managing an AWS Transcribe VocabularyFilter.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe VocabularyFilter using the `vocabulary_filter_name`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/vocabularyFilter:VocabularyFilter example example-name
/// ```
class VocabularyFilter extends CustomResource {
  /// ARN of the VocabularyFilter.
  late final Output<String> arn;

  /// Generated download URI.
  late final Output<String> downloadUri;

  /// The language code you selected for your vocabulary filter. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  late final Output<String> languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the VocabularyFilter. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with `words` argument.
  late final Output<String?> vocabularyFilterFileUri;

  /// The name of the VocabularyFilter.
  ///
  /// The following arguments are optional:
  late final Output<String> vocabularyFilterName;

  /// A list of terms to include in the vocabulary. Conflicts with `vocabulary_filter_file_uri` argument.
  late final Output<List<String>?> words;

  VocabularyFilter(
    String name, {
    VocabularyFilterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/vocabularyFilter:VocabularyFilter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.downloadUri = registerOutput<String>('downloadUri');
    this.languageCode = registerOutput<String>('languageCode');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vocabularyFilterFileUri =
        registerOutput<String?>('vocabularyFilterFileUri');
    this.vocabularyFilterName = registerOutput<String>('vocabularyFilterName');
    this.words = registerOutput<List<String>?>('words');
  }
}
