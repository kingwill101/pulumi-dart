// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_store_validation_settings.dart';

/// Input properties used for looking up and filtering PolicyStore resources.
class PolicyStoreState {
  /// The ARN of the Policy Store.
  final pulumi.Input<String>? arn;
  /// Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  final pulumi.Input<String>? deletionProtection;
  /// A description of the Policy Store.
  final pulumi.Input<String>? description;
  /// The ID of the Policy Store.
  final pulumi.Input<String>? policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Validation settings for the policy store.
  final pulumi.Input<PolicyStoreValidationSettings>? validationSettings;

  /// Creates a new [PolicyStoreState].
  /// [arn] The ARN of the Policy Store.
  /// [deletionProtection] Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  /// [description] A description of the Policy Store.
  /// [policyStoreId] The ID of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [validationSettings] Validation settings for the policy store.
  PolicyStoreState({
    this.arn,
    this.deletionProtection,
    this.description,
    this.policyStoreId,
    this.region,
    this.tags,
    this.tagsAll,
    this.validationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'policyStoreId': ?policyStoreId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'validationSettings': ?pulumi.Input.mapOptionalInputValue<PolicyStoreValidationSettings, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
    };
  }

  factory PolicyStoreState.fromMap(Map<String, dynamic> map) {
    return PolicyStoreState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      policyStoreId: map['policyStoreId'] == null ? null : (map['policyStoreId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      validationSettings: map['validationSettings'] == null ? null : (PolicyStoreValidationSettings.fromMap((map['validationSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

