// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_security_config.dart';
import 'model_card_timeouts.dart';

/// {@template pulumi_sagemaker_model_card_model_card_args_doc}
/// The set of arguments for ModelCard.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_model_card_model_card_args_doc}
class ModelCardArgs {
  /// Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  final pulumi.Input<String> content;
  /// Name of the model card.
  final pulumi.Input<String> modelCardName;
  /// Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  final pulumi.Input<String> modelCardStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  final pulumi.Input<ModelCardSecurityConfig>? securityConfig;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ModelCardTimeouts>? timeouts;

  /// Creates a new [ModelCardArgs].
  /// [content] Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  /// [modelCardName] Name of the model card.
  /// [modelCardStatus] Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityConfig] KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ModelCardArgs({
    required this.content,
    required this.modelCardName,
    required this.modelCardStatus,
    this.region,
    this.securityConfig,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'modelCardName': modelCardName,
      'modelCardStatus': modelCardStatus,
      'region': ?region,
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<ModelCardSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ModelCardTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ModelCardArgs.fromMap(Map<String, dynamic> map) {
    return ModelCardArgs(
      content: (map['content'] as String).input(),
      modelCardName: (map['modelCardName'] as String).input(),
      modelCardStatus: (map['modelCardStatus'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityConfig: map['securityConfig'] == null ? null : ((ModelCardSecurityConfig.fromMap((map['securityConfig']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ModelCardTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

