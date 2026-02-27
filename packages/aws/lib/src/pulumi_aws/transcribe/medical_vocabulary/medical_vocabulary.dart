import 'package:pulumi/pulumi.dart';
import 'medical_vocabulary_args.dart';

/// Resource for managing an AWS Transcribe MedicalVocabulary.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe MedicalVocabulary using the `vocabulary_name`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/medicalVocabulary:MedicalVocabulary example example-name
/// ```
class MedicalVocabulary extends CustomResource {
  /// ARN of the MedicalVocabulary.
  late final Output<String> arn;

  /// Generated download URI.
  late final Output<String> downloadUri;

  /// The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical.
  late final Output<String> languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the MedicalVocabulary. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary.
  late final Output<String> vocabularyFileUri;

  /// The name of the Medical Vocabulary.
  ///
  /// The following arguments are optional:
  late final Output<String> vocabularyName;

  MedicalVocabulary(
    String name, {
    MedicalVocabularyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/medicalVocabulary:MedicalVocabulary',
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
    this.vocabularyFileUri = registerOutput<String>('vocabularyFileUri');
    this.vocabularyName = registerOutput<String>('vocabularyName');
  }
}
