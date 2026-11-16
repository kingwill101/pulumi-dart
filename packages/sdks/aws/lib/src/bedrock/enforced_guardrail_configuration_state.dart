// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enforced_guardrail_configuration_model_enforcement.dart';
import 'enforced_guardrail_configuration_selective_content_guarding.dart';

/// Input properties used for looking up and filtering EnforcedGuardrailConfiguration resources.
class EnforcedGuardrailConfigurationState {
  /// Unique ID for the account enforced configuration.
  final pulumi.Input<String?>? configId;
  /// Guardrail ARN.
  final pulumi.Input<String?>? guardrailArn;
  /// Unique ID of the guardrail.
  final pulumi.Input<String?>? guardrailId;
  /// Numerical guardrail version. Must be a published version number (e.g., `1`, `2`). `DRAFT` is not supported.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? guardrailVersion;
  /// Model-specific information for the enforced guardrail configuration. If not present, the configuration is enforced on all models. See `modelEnforcement` Block below.
  final pulumi.Input<EnforcedGuardrailConfigurationModelEnforcement?>? modelEnforcement;
  /// Configuration owner type. Value: `ACCOUNT`.
  final pulumi.Input<String?>? owner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Selective content guarding controls for enforced guardrails. See `selectiveContentGuarding` Block below.
  final pulumi.Input<EnforcedGuardrailConfigurationSelectiveContentGuarding?>? selectiveContentGuarding;

  /// Creates a new [EnforcedGuardrailConfigurationState].
  /// [configId] Unique ID for the account enforced configuration.
  /// [guardrailArn] Guardrail ARN.
  /// [guardrailId] Unique ID of the guardrail.
  /// [guardrailVersion] Numerical guardrail version. Must be a published version number (e.g., `1`, `2`). `DRAFT` is not supported.
  /// [modelEnforcement] Model-specific information for the enforced guardrail configuration. If not present, the configuration is enforced on all models. See `modelEnforcement` Block below.
  /// [owner] Configuration owner type. Value: `ACCOUNT`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [selectiveContentGuarding] Selective content guarding controls for enforced guardrails. See `selectiveContentGuarding` Block below.
  const EnforcedGuardrailConfigurationState({
    this.configId,
    this.guardrailArn,
    this.guardrailId,
    this.guardrailVersion,
    this.modelEnforcement,
    this.owner,
    this.region,
    this.selectiveContentGuarding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'guardrailArn': ?guardrailArn,
      'guardrailId': ?guardrailId,
      'guardrailVersion': ?guardrailVersion,
      'modelEnforcement': ?pulumi.Input.mapOptionalInputValue<EnforcedGuardrailConfigurationModelEnforcement, Map<String, dynamic>>(modelEnforcement, (value) => value.toMap()),
      'owner': ?owner,
      'region': ?region,
      'selectiveContentGuarding': ?pulumi.Input.mapOptionalInputValue<EnforcedGuardrailConfigurationSelectiveContentGuarding, Map<String, dynamic>>(selectiveContentGuarding, (value) => value.toMap()),
    };
  }

  factory EnforcedGuardrailConfigurationState.fromMap(Map<String, dynamic> map) {
    return EnforcedGuardrailConfigurationState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailArn: (() { final guardedValue = map['guardrailArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailId: (() { final guardedValue = map['guardrailId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailVersion: (() { final guardedValue = map['guardrailVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelEnforcement: (() { final guardedValue = map['modelEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnforcedGuardrailConfigurationModelEnforcement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectiveContentGuarding: (() { final guardedValue = map['selectiveContentGuarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnforcedGuardrailConfigurationSelectiveContentGuarding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
