// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SerialConsoleAccess.
class SerialConsoleAccessArgs {
  /// Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  SerialConsoleAccessArgs({
    this.enabled,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory SerialConsoleAccessArgs.fromMap(Map<String, dynamic> map) {
    return SerialConsoleAccessArgs(
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
