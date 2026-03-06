// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_controltower_get_controls_get_controls_args_doc}
/// Arguments for getControls.
/// {@endtemplate}
/// {@macro pulumi_controltower_get_controls_get_controls_args_doc}
class GetControlsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the organizational unit.
  final pulumi.Input<String> targetIdentifier;

  /// Creates a new [GetControlsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetIdentifier] The ARN of the organizational unit.
  const GetControlsArgs({
    this.region,
    required this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'targetIdentifier': targetIdentifier,
    };
  }

  factory GetControlsArgs.fromMap(Map<String, dynamic> map) {
    return GetControlsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetIdentifier: pulumi.Input.fromValue(map['targetIdentifier'] as String),
    );
  }
}

