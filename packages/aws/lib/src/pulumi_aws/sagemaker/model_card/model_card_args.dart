// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../model_card_security_config/model_card_security_config.dart';
import '../model_card_timeouts/model_card_timeouts.dart';

/// The set of arguments for ModelCard.
class ModelCardArgs {
  /// Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  final Input<String> content;

  /// Name of the model card.
  final Input<String> modelCardName;

  /// Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  final Input<String> modelCardStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  final Input<ModelCardSecurityConfig>? securityConfig;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ModelCardTimeouts>? timeouts;

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
      map['securityConfig'] = Input.mapOptionalInputValue<
          ModelCardSecurityConfig,
          Map<String, dynamic>>(securityConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<ModelCardTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelCardArgs.fromMap(Map<String, dynamic> map) {
    return ModelCardArgs(
      content: Input.asInput<String>(map['content']),
      modelCardName: Input.asInput<String>(map['modelCardName']),
      modelCardStatus: Input.asInput<String>(map['modelCardStatus']),
      region: Input.asOptionalInput<String>(map['region']),
      securityConfig:
          Input.asOptionalInput<ModelCardSecurityConfig>(map['securityConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ModelCardTimeouts>(map['timeouts']),
    );
  }
}
