// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enforced_guardrail_configuration_model_enforcement.dart';
import 'enforced_guardrail_configuration_selective_content_guarding.dart';

/// {@template pulumi_bedrock_enforced_guardrail_configuration_enforced_guardrail_configuration_args_doc}
/// The set of arguments for EnforcedGuardrailConfiguration.
/// {@endtemplate}
/// {@macro pulumi_bedrock_enforced_guardrail_configuration_enforced_guardrail_configuration_args_doc}
class EnforcedGuardrailConfigurationArgs {
  /// Guardrail ARN.
  final pulumi.Input<String> guardrailArn;
  /// Numerical guardrail version. Must be a published version number (e.g., `1`, `2`). `DRAFT` is not supported.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> guardrailVersion;
  /// Model-specific information for the enforced guardrail configuration. If not present, the configuration is enforced on all models. See `modelEnforcement` Block below.
  final pulumi.Input<EnforcedGuardrailConfigurationModelEnforcement?>? modelEnforcement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Selective content guarding controls for enforced guardrails. See `selectiveContentGuarding` Block below.
  final pulumi.Input<EnforcedGuardrailConfigurationSelectiveContentGuarding?>? selectiveContentGuarding;

  /// Creates a new [EnforcedGuardrailConfigurationArgs].
  /// [guardrailArn] Guardrail ARN.
  /// [guardrailVersion] Numerical guardrail version. Must be a published version number (e.g., `1`, `2`). `DRAFT` is not supported.
  /// [modelEnforcement] Model-specific information for the enforced guardrail configuration. If not present, the configuration is enforced on all models. See `modelEnforcement` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [selectiveContentGuarding] Selective content guarding controls for enforced guardrails. See `selectiveContentGuarding` Block below.
  const EnforcedGuardrailConfigurationArgs({
    required this.guardrailArn,
    required this.guardrailVersion,
    this.modelEnforcement,
    this.region,
    this.selectiveContentGuarding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailArn': guardrailArn,
      'guardrailVersion': guardrailVersion,
      'modelEnforcement': ?pulumi.Input.mapOptionalInputValue<EnforcedGuardrailConfigurationModelEnforcement, Map<String, dynamic>>(modelEnforcement, (value) => value.toMap()),
      'region': ?region,
      'selectiveContentGuarding': ?pulumi.Input.mapOptionalInputValue<EnforcedGuardrailConfigurationSelectiveContentGuarding, Map<String, dynamic>>(selectiveContentGuarding, (value) => value.toMap()),
    };
  }

  factory EnforcedGuardrailConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return EnforcedGuardrailConfigurationArgs(
      guardrailArn: pulumi.Input.fromValue(map['guardrailArn'] as String),
      guardrailVersion: pulumi.Input.fromValue(map['guardrailVersion'] as String),
      modelEnforcement: (() { final guardedValue = map['modelEnforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnforcedGuardrailConfigurationModelEnforcement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectiveContentGuarding: (() { final guardedValue = map['selectiveContentGuarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnforcedGuardrailConfigurationSelectiveContentGuarding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
