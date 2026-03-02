// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_security_config.dart';
import 'model_card_timeouts.dart';

/// Input properties used for looking up and filtering ModelCard resources.
class ModelCardState {
  /// Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  final pulumi.Input<String>? content;
  /// The Amazon Resource Name (ARN) of the model card.
  final pulumi.Input<String>? modelCardArn;
  /// Name of the model card.
  final pulumi.Input<String>? modelCardName;
  /// Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  final pulumi.Input<String>? modelCardStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  final pulumi.Input<ModelCardSecurityConfig>? securityConfig;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ModelCardTimeouts>? timeouts;

  /// Creates a new [ModelCardState].
  /// [content] Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  /// [modelCardArn] The Amazon Resource Name (ARN) of the model card.
  /// [modelCardName] Name of the model card.
  /// [modelCardStatus] Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityConfig] KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ModelCardState({
    this.content,
    this.modelCardArn,
    this.modelCardName,
    this.modelCardStatus,
    this.region,
    this.securityConfig,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'modelCardArn': ?modelCardArn,
      'modelCardName': ?modelCardName,
      'modelCardStatus': ?modelCardStatus,
      'region': ?region,
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<ModelCardSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ModelCardTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ModelCardState.fromMap(Map<String, dynamic> map) {
    return ModelCardState(
      content: map['content'] == null ? null : ((map['content'] as String).input()).input(),
      modelCardArn: map['modelCardArn'] == null ? null : ((map['modelCardArn'] as String).input()).input(),
      modelCardName: map['modelCardName'] == null ? null : ((map['modelCardName'] as String).input()).input(),
      modelCardStatus: map['modelCardStatus'] == null ? null : ((map['modelCardStatus'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityConfig: map['securityConfig'] == null ? null : ((ModelCardSecurityConfig.fromMap((map['securityConfig']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ModelCardTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

