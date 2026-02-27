import 'package:pulumi/pulumi.dart';
import 'vocabulary_args.dart';

/// Provides an Amazon Connect Vocabulary resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Vocabularies using the `instance_id` and `vocabulary_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/vocabulary:Vocabulary example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class Vocabulary extends CustomResource {
  /// The Amazon Resource Name (ARN) of the vocabulary.
  late final Output<String> arn;

  /// The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see [Create a custom vocabulary using a table](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table). Minimum length of `1`. Maximum length of `60000`.
  late final Output<String> content;

  /// The reason why the custom vocabulary was not created.
  late final Output<String> failureReason;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final Output<String> instanceId;

  /// The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see [What is Amazon Transcribe?](https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html). Valid Values are `ar-AE`, `de-CH`, `de-DE`, `en-AB`, `en-AU`, `en-GB`, `en-IE`, `en-IN`, `en-US`, `en-WL`, `es-ES`, `es-US`, `fr-CA`, `fr-FR`, `hi-IN`, `it-IT`, `ja-JP`, `ko-KR`, `pt-BR`, `pt-PT`, `zh-CN`.
  late final Output<String> languageCode;

  /// The timestamp when the custom vocabulary was last modified.
  late final Output<String> lastModifiedTime;

  /// A unique name of the custom vocabulary. Must not be more than 140 characters.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current state of the custom vocabulary. Valid values are `CREATION_IN_PROGRESS`, `ACTIVE`, `CREATION_FAILED`, `DELETE_IN_PROGRESS`.
  late final Output<String> state;

  /// Tags to apply to the vocabulary. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The identifier of the custom vocabulary.
  late final Output<String> vocabularyId;

  Vocabulary(
    String name, {
    VocabularyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:connect/vocabulary:Vocabulary',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.failureReason = registerOutput<String>('failureReason');
    this.instanceId = registerOutput<String>('instanceId');
    this.languageCode = registerOutput<String>('languageCode');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vocabularyId = registerOutput<String>('vocabularyId');
  }
}
