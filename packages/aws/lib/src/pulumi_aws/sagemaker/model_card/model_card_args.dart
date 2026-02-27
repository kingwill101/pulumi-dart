// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../model_card_security_config/model_card_security_config.dart';
import '../model_card_timeouts/model_card_timeouts.dart';

/// The set of arguments for ModelCard.
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
    final map = <String, dynamic>{};
    map['content'] = content;
    map['modelCardName'] = modelCardName;
    map['modelCardStatus'] = modelCardStatus;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = pulumi.Input.mapOptionalInputValue<
          ModelCardSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ModelCardTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelCardArgs.fromMap(Map<String, dynamic> map) {
    return ModelCardArgs(
      content: pulumi.Input.asInput<String>(map['content']),
      modelCardName: pulumi.Input.asInput<String>(map['modelCardName']),
      modelCardStatus: pulumi.Input.asInput<String>(map['modelCardStatus']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityConfig: pulumi.Input.asOptionalInput<ModelCardSecurityConfig>(
          map['securityConfig']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<ModelCardTimeouts>(map['timeouts']),
    );
  }
}
