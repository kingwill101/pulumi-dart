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
    String? description,
    required String guardrailArn,
    String? region,
    bool? skipDestroy,
    GuardrailVersionTimeouts? timeouts,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       guardrailArn = pulumi.Input.asInput<String>(guardrailArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
       timeouts = pulumi.Input.asOptionalInput<GuardrailVersionTimeouts>(
         timeouts,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guardrailArn': guardrailArn,
      'region': ?region,
      'skipDestroy': ?skipDestroy,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            GuardrailVersionTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory GuardrailVersionArgs.fromMap(Map<String, dynamic> map) {
    return GuardrailVersionArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      guardrailArn: map['guardrailArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      skipDestroy: map['skipDestroy'] == null
          ? null
          : map['skipDestroy'] as bool,
      timeouts: map['timeouts'] == null
          ? null
          : GuardrailVersionTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
