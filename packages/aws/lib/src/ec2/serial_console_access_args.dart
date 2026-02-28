// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_serial_console_access_serial_console_access_args_doc}
/// The set of arguments for SerialConsoleAccess.
/// {@endtemplate}
/// {@macro pulumi_ec2_serial_console_access_serial_console_access_args_doc}
class SerialConsoleAccessArgs {
  /// Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [SerialConsoleAccessArgs].
  /// [enabled] Whether or not serial console access is enabled. Valid values are `true` or `false`. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  SerialConsoleAccessArgs({
    bool? enabled,
    String? region,
  })  : enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
