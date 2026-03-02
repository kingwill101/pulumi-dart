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
  GuardrailVersionState({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      guardrailArn: map['guardrailArn'] == null ? null : (map['guardrailArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
      timeouts: map['timeouts'] == null ? null : (GuardrailVersionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

