// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_store_validation_settings/policy_store_validation_settings.dart';

/// The set of arguments for PolicyStore.
class PolicyStoreArgs {
  /// Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  final Input<String>? deletionProtection;

  /// A description of the Policy Store.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Validation settings for the policy store.
  final Input<PolicyStoreValidationSettings> validationSettings;

  PolicyStoreArgs({
    this.deletionProtection,
    this.description,
    this.region,
    this.tags,
    required this.validationSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['validationSettings'] = Input.mapInputValue<
        PolicyStoreValidationSettings,
        Map<String, dynamic>>(validationSettings, (value) => value.toMap());
    return map;
  }

  factory PolicyStoreArgs.fromMap(Map<String, dynamic> map) {
    return PolicyStoreArgs(
      deletionProtection:
          Input.asOptionalInput<String>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      validationSettings: Input.asInput<PolicyStoreValidationSettings>(
          map['validationSettings']),
    );
  }
}
