import 'package:pulumi/pulumi.dart' as pulumi;
import '../document_classifier_input_data_config/document_classifier_input_data_config.dart';
import '../document_classifier_output_data_config/document_classifier_output_data_config.dart';
import '../document_classifier_vpc_config/document_classifier_vpc_config.dart';
import 'document_classifier_args.dart';

/// Resource for managing an AWS Comprehend Document Classifier.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Comprehend document classifier.
///
///
/// Using `pulumi import`, import Comprehend Document Classifier using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:comprehend/documentClassifier:DocumentClassifier example arn:aws:comprehend:us-west-2:123456789012:document_classifier/example
/// ```
class DocumentClassifier extends pulumi.CustomResource {
  /// ARN of the Document Classifier version.
  late final pulumi.Output<String> arn;

  /// The ARN for an IAM Role which allows Comprehend to read the training and testing data.
  late final pulumi.Output<String> dataAccessRoleArn;

  /// Configuration for the training and testing data.
  /// See the `input_data_config` Configuration Block section below.
  late final pulumi.Output<DocumentClassifierInputDataConfig> inputDataConfig;

  /// Two-letter language code for the language.
  /// One of `en`, `es`, `fr`, `it`, `de`, or `pt`.
  late final pulumi.Output<String> languageCode;

  /// The document classification mode.
  /// One of `MULTI_CLASS` or `MULTI_LABEL`.
  /// `MULTI_CLASS` is also known as "Single Label" in the AWS Console.
  late final pulumi.Output<String?> mode;

  /// KMS Key used to encrypt trained Document Classifiers.
  /// Can be a KMS Key ID or a KMS Key ARN.
  late final pulumi.Output<String?> modelKmsKeyId;

  /// Name for the Document Classifier.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Configuration for the output results of training.
  /// See the `output_data_config` Configuration Block section below.
  late final pulumi.Output<DocumentClassifierOutputDataConfig> outputDataConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` Configuration Block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Name for the version of the Document Classifier.
  /// Each version must have a unique name within the Document Classifier.
  /// If omitted, the provider will assign a random, unique version name.
  /// If explicitly set to `""`, no version name will be set.
  /// Has a maximum length of 63 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name_prefix`.
  late final pulumi.Output<String> versionName;

  /// Creates a unique version name beginning with the specified prefix.
  /// Has a maximum length of 37 characters.
  /// Can contain upper- and lower-case letters, numbers, and hypen (`-`).
  /// Conflicts with `version_name`.
  late final pulumi.Output<String> versionNamePrefix;

  /// KMS Key used to encrypt storage volumes during job processing.
  /// Can be a KMS Key ID or a KMS Key ARN.
  late final pulumi.Output<String?> volumeKmsKeyId;

  /// Configuration parameters for VPC to contain Document Classifier resources.
  /// See the `vpc_config` Configuration Block section below.
  late final pulumi.Output<DocumentClassifierVpcConfig?> vpcConfig;

  DocumentClassifier(
    String name, {
    DocumentClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:comprehend/documentClassifier:DocumentClassifier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataAccessRoleArn = registerOutput<String>('dataAccessRoleArn');
    this.inputDataConfig =
        registerOutput<DocumentClassifierInputDataConfig>('inputDataConfig');
    this.languageCode = registerOutput<String>('languageCode');
    this.mode = registerOutput<String?>('mode');
    this.modelKmsKeyId = registerOutput<String?>('modelKmsKeyId');
    this.name = registerOutput<String>('name');
    this.outputDataConfig =
        registerOutput<DocumentClassifierOutputDataConfig>('outputDataConfig');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.versionName = registerOutput<String>('versionName');
    this.versionNamePrefix = registerOutput<String>('versionNamePrefix');
    this.volumeKmsKeyId = registerOutput<String?>('volumeKmsKeyId');
    this.vpcConfig = registerOutput<DocumentClassifierVpcConfig?>('vpcConfig');
  }
}
