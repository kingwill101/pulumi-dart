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
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? region,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'region': ?region,
    };
  }

  factory SerialConsoleAccessArgs.fromMap(Map<String, dynamic> map) {
    return SerialConsoleAccessArgs(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

