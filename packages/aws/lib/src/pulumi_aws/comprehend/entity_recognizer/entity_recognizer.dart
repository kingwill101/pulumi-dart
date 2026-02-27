import 'package:pulumi/pulumi.dart';
import '../entity_recognizer_input_data_config/entity_recognizer_input_data_config.dart';
import '../entity_recognizer_vpc_config/entity_recognizer_vpc_config.dart';
import 'entity_recognizer_args.dart';

/// Resource for managing an AWS Comprehend Entity Recognizer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Comprehend entity recognizer.
///
///
/// Using `pulumi import`, import Comprehend Entity Recognizer using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:comprehend/entityRecognizer:EntityRecognizer example arn:aws:comprehend:us-west-2:123456789012:entity-recognizer/example
/// ```
class EntityRecognizer extends CustomResource {
  /// ARN of the Entity Recognizer version.
  late final Output<String> arn;

  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  late final Output<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  late final Output<EntityRecognizerInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  late final Output<String> languageCode;

  /// The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers.
  late final Output<String?> modelKmsKeyId;

  /// Name for the Entity Recognizer.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Name for the version of the Entity Recognizer.
  /// Each version must have a unique name within the Entity Recognizer.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name_prefix`.
  late final Output<String> versionName;

  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name`.
  late final Output<String> versionNamePrefix;

  /// ID or ARN of a KMS Key used to encrypt storage volumes during job processing.
  late final Output<String?> volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Entity Recognizer resources.
  /// See the `vpc_config` Configuration Block section below.
  late final Output<EntityRecognizerVpcConfig?> vpcConfig;

  EntityRecognizer(
    String name, {
    EntityRecognizerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:comprehend/entityRecognizer:EntityRecognizer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    this.inputDataConfig =
        registerOutput<EntityRecognizerInputDataConfig>('inputDataConfig');
    this.languageCode = registerOutput<String>('languageCode');
    this.modelKmsKeyId = registerOutput<String?>('modelKmsKeyId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionName = registerOutput<String>('versionName');
    this.versionNamePrefix = registerOutput<String>('versionNamePrefix');
    this.volumeKmsKeyId = registerOutput<String?>('volumeKmsKeyId');
    this.vpcConfig = registerOutput<EntityRecognizerVpcConfig?>('vpcConfig');
  }
}
