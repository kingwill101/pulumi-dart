// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_version_timeouts.dart';

/// Input properties used for looking up and filtering GuardrailVersion resources.
class GuardrailVersionState {
  /// Description of the Guardrail version.
  final pulumi.Input<String>? description;
  /// Guardrail ARN.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? guardrailArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to retain the old version of a previously deployed Guardrail. Default is `false`
  final pulumi.Input<bool>? skipDestroy;
  final pulumi.Input<GuardrailVersionTimeouts>? timeouts;
  /// Guardrail version.
  final pulumi.Input<String>? version;

  /// Creates a new [GuardrailVersionState].
  /// [description] Description of the Guardrail version.
  /// [guardrailArn] Guardrail ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Guardrail. Default is `false`
  /// [timeouts] Optional.
  /// [version] Guardrail version.
  const GuardrailVersionState({
    this.description,
    this.guardrailArn,
    this.region,
    this.skipDestroy,
    this.timeouts,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guardrailArn': ?guardrailArn,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GuardrailVersionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory GuardrailVersionState.fromMap(Map<String, dynamic> map) {
    return GuardrailVersionState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guardrailArn: (() { final guardedValue = map['guardrailArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GuardrailVersionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
