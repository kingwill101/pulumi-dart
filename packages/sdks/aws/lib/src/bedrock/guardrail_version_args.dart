// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_version_timeouts.dart';

/// {@template pulumi_bedrock_guardrail_version_guardrail_version_args_doc}
/// The set of arguments for GuardrailVersion.
/// {@endtemplate}
/// {@macro pulumi_bedrock_guardrail_version_guardrail_version_args_doc}
class GuardrailVersionArgs {
  /// Description of the Guardrail version.
  final pulumi.Input<String>? description;
  /// Guardrail ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> guardrailArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to retain the old version of a previously deployed Guardrail. Default is `false`
  final pulumi.Input<bool>? skipDestroy;
  final pulumi.Input<GuardrailVersionTimeouts>? timeouts;

  /// Creates a new [GuardrailVersionArgs].
  /// [description] Description of the Guardrail version.
  /// [guardrailArn] Guardrail ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Guardrail. Default is `false`
  /// [timeouts] Optional.
  GuardrailVersionArgs({
    this.description,
    required this.guardrailArn,
    this.region,
    this.skipDestroy,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guardrailArn': guardrailArn,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GuardrailVersionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory GuardrailVersionArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailVersionArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailArn: pulumi.Input.fromValue(map['guardrailArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailVersionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

