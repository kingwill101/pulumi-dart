// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_contextual_grounding_policy_config_filters_config/guardrail_contextual_grounding_policy_config_filters_config.dart';

class GuardrailContextualGroundingPolicyConfig {
  /// One or more blocks defining contextual grounding filter configs. See Contextual Grounding Filters Config for more information.
  final List<GuardrailContextualGroundingPolicyConfigFiltersConfig>?
      filtersConfigs;

  GuardrailContextualGroundingPolicyConfig({
    this.filtersConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersConfigsValue = filtersConfigs;
    if (filtersConfigsValue != null) {
      map['filtersConfigs'] = pulumi.Input.encodeList<
          GuardrailContextualGroundingPolicyConfigFiltersConfig,
          Map<String, dynamic>>(filtersConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailContextualGroundingPolicyConfig.fromMap(
      Map<String, dynamic> map) {
    return GuardrailContextualGroundingPolicyConfig(
      filtersConfigs: map['filtersConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  GuardrailContextualGroundingPolicyConfigFiltersConfig>(
              map['filtersConfigs'],
              (value) =>
                  GuardrailContextualGroundingPolicyConfigFiltersConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
