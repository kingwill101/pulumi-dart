import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_card_security_config/model_card_security_config.dart';
import '../model_card_timeouts/model_card_timeouts.dart';
import 'model_card_args.dart';

/// Manage an Amazon SageMaker Model Card.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import model cards using the `model_card_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelCard:ModelCard example my-model-card
/// ```
class ModelCard extends pulumi.CustomResource {
  /// Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  late final pulumi.Output<String> content;

  /// The Amazon Resource Name (ARN) of the model card.
  late final pulumi.Output<String> modelCardArn;

  /// Name of the model card.
  late final pulumi.Output<String> modelCardName;

  /// Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  late final pulumi.Output<String> modelCardStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  late final pulumi.Output<ModelCardSecurityConfig?> securityConfig;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ModelCardTimeouts?> timeouts;

  ModelCard(
    String name, {
    ModelCardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelCard:ModelCard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.modelCardArn = registerOutput<String>('modelCardArn');
    this.modelCardName = registerOutput<String>('modelCardName');
    this.modelCardStatus = registerOutput<String>('modelCardStatus');
    this.region = registerOutput<String>('region');
    this.securityConfig =
        registerOutput<ModelCardSecurityConfig?>('securityConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ModelCardTimeouts?>('timeouts');
  }
}
