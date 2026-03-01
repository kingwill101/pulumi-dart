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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? deletionProtection,
    pulumi.Output<String>? description,
    pulumi.Output<String>? policyStoreId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<PolicyStoreValidationSettings>? validationSettings,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deletionProtection = pulumi.Input.asOptionalInput<String>(deletionProtection),
      description = pulumi.Input.asOptionalInput<String>(description),
      policyStoreId = pulumi.Input.asOptionalInput<String>(policyStoreId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      validationSettings = pulumi.Input.asOptionalInput<PolicyStoreValidationSettings>(validationSettings);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<String>(map['deletionProtection'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      policyStoreId: map['policyStoreId'] == null ? null : pulumi.Output.create<String>(map['policyStoreId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      validationSettings: map['validationSettings'] == null ? null : pulumi.Output.create<PolicyStoreValidationSettings>(PolicyStoreValidationSettings.fromMap((map['validationSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

