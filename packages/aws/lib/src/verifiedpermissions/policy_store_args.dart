// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_store_validation_settings.dart';

/// {@template pulumi_verifiedpermissions_policy_store_policy_store_args_doc}
/// The set of arguments for PolicyStore.
/// {@endtemplate}
/// {@macro pulumi_verifiedpermissions_policy_store_policy_store_args_doc}
class PolicyStoreArgs {
  /// Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  final pulumi.Input<String>? deletionProtection;

  /// A description of the Policy Store.
  final pulumi.Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Validation settings for the policy store.
  final pulumi.Input<PolicyStoreValidationSettings> validationSettings;

  /// Creates a new [PolicyStoreArgs].
  /// [deletionProtection] Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  /// [description] A description of the Policy Store.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [validationSettings] Validation settings for the policy store.
  PolicyStoreArgs({
    String? deletionProtection,
    String? description,
    String? region,
    Map<String, String>? tags,
    required PolicyStoreValidationSettings validationSettings,
  }) : deletionProtection = pulumi.Input.asOptionalInput<String>(
         deletionProtection,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       validationSettings = pulumi.Input.asInput<PolicyStoreValidationSettings>(
         validationSettings,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'region': ?region,
      'tags': ?tags,
      'validationSettings':
          pulumi.Input.mapInputValue<
            PolicyStoreValidationSettings,
            Map<String, dynamic>
          >(validationSettings, (value) => value.toMap()),
    };
  }

  factory PolicyStoreArgs.fromMap(Map<String, dynamic> map) {
    return PolicyStoreArgs(
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      validationSettings: PolicyStoreValidationSettings.fromMap(
        (map['validationSettings'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
