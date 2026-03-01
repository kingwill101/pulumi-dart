// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_sensitive_information_policy_config_pii_entities_config.dart';
import 'guardrail_sensitive_information_policy_config_regexes_config.dart';

class GuardrailSensitiveInformationPolicyConfig {
  /// List of entities. See PII Entities Config for more information.
  final List<GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig>?
  piiEntitiesConfigs;

  /// List of regex. See Regexes Config for more information.
  final List<GuardrailSensitiveInformationPolicyConfigRegexesConfig>?
  regexesConfigs;

  /// Creates a new [GuardrailSensitiveInformationPolicyConfig].
  /// [piiEntitiesConfigs] List of entities. See PII Entities Config for more information.
  /// [regexesConfigs] List of regex. See Regexes Config for more information.
  GuardrailSensitiveInformationPolicyConfig({
    this.piiEntitiesConfigs,
    this.regexesConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'piiEntitiesConfigs': ?piiEntitiesConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig,
              Map<String, dynamic>
            >(piiEntitiesConfigs!, (value) => value.toMap()),
      'regexesConfigs': ?regexesConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GuardrailSensitiveInformationPolicyConfigRegexesConfig,
              Map<String, dynamic>
            >(regexesConfigs!, (value) => value.toMap()),
    };
  }

  factory GuardrailSensitiveInformationPolicyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuardrailSensitiveInformationPolicyConfig(
      piiEntitiesConfigs: map['piiEntitiesConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig
            >(
              map['piiEntitiesConfigs'],
              (value) =>
                  GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      regexesConfigs: map['regexesConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GuardrailSensitiveInformationPolicyConfigRegexesConfig
            >(
              map['regexesConfigs'],
              (value) =>
                  GuardrailSensitiveInformationPolicyConfigRegexesConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
