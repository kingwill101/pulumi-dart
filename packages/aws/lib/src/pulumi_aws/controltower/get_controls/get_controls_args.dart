// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getControls.
class GetControlsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the organizational unit.
  final Input<String> targetIdentifier;

  GetControlsArgs({
    this.region,
    required this.targetIdentifier,
  });

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
      region: Input.asOptionalInput<String>(map['region']),
      targetIdentifier: Input.asInput<String>(map['targetIdentifier']),
    );
  }
}
