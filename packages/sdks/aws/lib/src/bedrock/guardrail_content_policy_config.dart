// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_content_policy_config_filters_config.dart';
import 'guardrail_content_policy_config_tier_config.dart';

class GuardrailContentPolicyConfig {
  /// Set of content filter configs in content policy.
  /// See Filters Config for more information.
  final pulumi.Input<List<GuardrailContentPolicyConfigFiltersConfig>?>? filtersConfigs;
  /// Configuration block for the content policy tier. See Tier Config for more information.
  final pulumi.Input<List<GuardrailContentPolicyConfigTierConfig>?>? tierConfigs;

  /// Creates a new [GuardrailContentPolicyConfig].
  /// [filtersConfigs] Set of content filter configs in content policy.
  /// [tierConfigs] Configuration block for the content policy tier. See Tier Config for more information.
  const GuardrailContentPolicyConfig({
    this.filtersConfigs,
    this.tierConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filtersConfigs': ?pulumi.Input.mapOptionalInputValue<List<GuardrailContentPolicyConfigFiltersConfig>, List<Map<String, dynamic>>>(filtersConfigs, (value) => pulumi.Input.encodeList<GuardrailContentPolicyConfigFiltersConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tierConfigs': ?pulumi.Input.mapOptionalInputValue<List<GuardrailContentPolicyConfigTierConfig>, List<Map<String, dynamic>>>(tierConfigs, (value) => pulumi.Input.encodeList<GuardrailContentPolicyConfigTierConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuardrailContentPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailContentPolicyConfig(
      filtersConfigs: (() { final guardedValue = map['filtersConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailContentPolicyConfigFiltersConfig>(guardedValue, (value) => GuardrailContentPolicyConfigFiltersConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tierConfigs: (() { final guardedValue = map['tierConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailContentPolicyConfigTierConfig>(guardedValue, (value) => GuardrailContentPolicyConfigTierConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
