// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_get_security_controls_get_security_controls_args_doc}
/// Arguments for getSecurityControls.
/// {@endtemplate}
/// {@macro pulumi_securityhub_get_security_controls_get_security_controls_args_doc}
class GetSecurityControlsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the standard that you want to list controls for. If omitted, all controls are returned.
  final pulumi.Input<String>? standardsArn;

  /// Creates a new [GetSecurityControlsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [standardsArn] ARN of the standard that you want to list controls for. If omitted, all controls are returned.
  const GetSecurityControlsArgs({
    this.region,
    this.standardsArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'standardsArn': ?standardsArn,
    };
  }

  factory GetSecurityControlsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityControlsArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardsArn: (() { final guardedValue = map['standardsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
