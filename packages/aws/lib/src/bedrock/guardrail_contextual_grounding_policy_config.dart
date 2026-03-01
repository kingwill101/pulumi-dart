// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_contextual_grounding_policy_config_filters_config.dart';

class GuardrailContextualGroundingPolicyConfig {
  /// One or more blocks defining contextual grounding filter configs. See Contextual Grounding Filters Config for more information.
  final List<GuardrailContextualGroundingPolicyConfigFiltersConfig>?
  filtersConfigs;

  /// Creates a new [GuardrailContextualGroundingPolicyConfig].
  /// [filtersConfigs] One or more blocks defining contextual grounding filter configs. See Contextual Grounding Filters Config for more information.
  GuardrailContextualGroundingPolicyConfig({this.filtersConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filtersConfigs': ?filtersConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GuardrailContextualGroundingPolicyConfigFiltersConfig,
              Map<String, dynamic>
            >(filtersConfigs!, (value) => value.toMap()),
    };
  }

  factory GuardrailContextualGroundingPolicyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuardrailContextualGroundingPolicyConfig(
      filtersConfigs: map['filtersConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GuardrailContextualGroundingPolicyConfigFiltersConfig
            >(
              map['filtersConfigs'],
              (value) =>
                  GuardrailContextualGroundingPolicyConfigFiltersConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
