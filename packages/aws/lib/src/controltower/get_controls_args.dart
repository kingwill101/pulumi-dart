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
  GetControlsArgs({
    String? region,
    required String targetIdentifier,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        targetIdentifier = pulumi.Input.asInput<String>(targetIdentifier);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetIdentifier'] = targetIdentifier;
    return map;
  }

  factory GetControlsArgs.fromMap(Map<String, dynamic> map) {
    return GetControlsArgs(
      region: map['region'] == null ? null : map['region'] as String,
      targetIdentifier: map['targetIdentifier'] as String,
    );
  }
}
