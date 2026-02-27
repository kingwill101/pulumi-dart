// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_content_policy_config_filters_config/guardrail_content_policy_config_filters_config.dart';
import '../guardrail_content_policy_config_tier_config/guardrail_content_policy_config_tier_config.dart';

class GuardrailContentPolicyConfig {
  /// Set of content filter configs in content policy.
  /// See Filters Config for more information.
  final List<GuardrailContentPolicyConfigFiltersConfig>? filtersConfigs;

  /// Configuration block for the content policy tier. See Tier Config for more information.
  final List<GuardrailContentPolicyConfigTierConfig>? tierConfigs;

  GuardrailContentPolicyConfig({
    this.filtersConfigs,
    this.tierConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersConfigsValue = filtersConfigs;
    if (filtersConfigsValue != null) {
      map['filtersConfigs'] = pulumi.Input.encodeList<
          GuardrailContentPolicyConfigFiltersConfig,
          Map<String, dynamic>>(filtersConfigsValue, (value) => value.toMap());
    }
    final tierConfigsValue = tierConfigs;
    if (tierConfigsValue != null) {
      map['tierConfigs'] = pulumi.Input.encodeList<
          GuardrailContentPolicyConfigTierConfig,
          Map<String, dynamic>>(tierConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailContentPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailContentPolicyConfig(
      filtersConfigs: map['filtersConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GuardrailContentPolicyConfigFiltersConfig>(
              map['filtersConfigs'],
              (value) => GuardrailContentPolicyConfigFiltersConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tierConfigs: map['tierConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GuardrailContentPolicyConfigTierConfig>(
              map['tierConfigs'],
              (value) => GuardrailContentPolicyConfigTierConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
