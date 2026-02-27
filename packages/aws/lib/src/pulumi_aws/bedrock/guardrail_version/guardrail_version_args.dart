// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_version_timeouts/guardrail_version_timeouts.dart';

/// The set of arguments for GuardrailVersion.
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

  GuardrailVersionArgs({
    this.description,
    required this.guardrailArn,
    this.region,
    this.skipDestroy,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['guardrailArn'] = guardrailArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          GuardrailVersionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailVersionArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailVersionArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      guardrailArn: pulumi.Input.asInput<String>(map['guardrailArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      timeouts: pulumi.Input.asOptionalInput<GuardrailVersionTimeouts>(
          map['timeouts']),
    );
  }
}
