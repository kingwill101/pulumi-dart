import 'package:pulumi/pulumi.dart' as pulumi;
import '../language_model_input_data_config/language_model_input_data_config.dart';
import 'language_model_args.dart';

/// Resource for managing an AWS Transcribe LanguageModel.
///
/// > This resource can take a significant amount of time to provision. See Language Model [FAQ](https://aws.amazon.com/transcribe/faqs/) for more details.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe LanguageModel using the `model_name`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/languageModel:LanguageModel example example-name
/// ```
class LanguageModel extends pulumi.CustomResource {
  /// ARN of the LanguageModel.
  late final pulumi.Output<String> arn;

  /// Name of reference base model.
  late final pulumi.Output<String> baseModelName;

  /// The input data config for the LanguageModel. See Input Data Config for more details.
  late final pulumi.Output<LanguageModelInputDataConfig> inputDataConfig;

  /// The language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  late final pulumi.Output<String> languageCode;

  /// The model name.
  late final pulumi.Output<String> modelName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  LanguageModel(
    String name, {
    LanguageModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/languageModel:LanguageModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.baseModelName = registerOutput<String>('baseModelName');
    this.inputDataConfig =
        registerOutput<LanguageModelInputDataConfig>('inputDataConfig');
    this.languageCode = registerOutput<String>('languageCode');
    this.modelName = registerOutput<String>('modelName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
