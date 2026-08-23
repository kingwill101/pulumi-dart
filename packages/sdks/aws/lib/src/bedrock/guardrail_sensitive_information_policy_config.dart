// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_sensitive_information_policy_config_pii_entities_config.dart';
import 'guardrail_sensitive_information_policy_config_regexes_config.dart';

class GuardrailSensitiveInformationPolicyConfig {
  /// List of entities. See PII Entities Config for more information.
  final pulumi.Input<List<GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig>>? piiEntitiesConfigs;
  /// List of regex. See Regexes Config for more information.
  final pulumi.Input<List<GuardrailSensitiveInformationPolicyConfigRegexesConfig>>? regexesConfigs;

  /// Creates a new [GuardrailSensitiveInformationPolicyConfig].
  /// [piiEntitiesConfigs] List of entities. See PII Entities Config for more information.
  /// [regexesConfigs] List of regex. See Regexes Config for more information.
  const GuardrailSensitiveInformationPolicyConfig({
    this.piiEntitiesConfigs,
    this.regexesConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'piiEntitiesConfigs': ?pulumi.Input.mapOptionalInputValue<List<GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig>, List<Map<String, dynamic>>>(piiEntitiesConfigs, (value) => pulumi.Input.encodeList<GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexesConfigs': ?pulumi.Input.mapOptionalInputValue<List<GuardrailSensitiveInformationPolicyConfigRegexesConfig>, List<Map<String, dynamic>>>(regexesConfigs, (value) => pulumi.Input.encodeList<GuardrailSensitiveInformationPolicyConfigRegexesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuardrailSensitiveInformationPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailSensitiveInformationPolicyConfig(
      piiEntitiesConfigs: (() { final guardedValue = map['piiEntitiesConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig>(guardedValue, (value) => GuardrailSensitiveInformationPolicyConfigPiiEntitiesConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regexesConfigs: (() { final guardedValue = map['regexesConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailSensitiveInformationPolicyConfigRegexesConfig>(guardedValue, (value) => GuardrailSensitiveInformationPolicyConfigRegexesConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
