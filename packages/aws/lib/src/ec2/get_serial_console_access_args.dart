// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_serial_console_access_get_serial_console_access_args_doc}
/// Arguments for getSerialConsoleAccess.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_serial_console_access_get_serial_console_access_args_doc}
class GetSerialConsoleAccessArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSerialConsoleAccessArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSerialConsoleAccessArgs({String? region})
    : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region};
  }

  factory GetSerialConsoleAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetSerialConsoleAccessArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
