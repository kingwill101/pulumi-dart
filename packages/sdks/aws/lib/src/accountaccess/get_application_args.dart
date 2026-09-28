// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accountaccess_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_accountaccess_get_application_get_application_args_doc}
class GetApplicationArgs {
  /// ARN of the Application to look up. Exactly one of `arn` or `identityCenterInstanceArn` must be specified.
  final pulumi.Input<String?>? arn;
  /// ARN of the IAM Identity Center instance whose bound Application should be returned. Exactly one of `arn` or `identityCenterInstanceArn` must be specified.
  final pulumi.Input<String?>? identityCenterInstanceArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetApplicationArgs].
  /// [arn] ARN of the Application to look up. Exactly one of `arn` or `identityCenterInstanceArn` must be specified.
  /// [identityCenterInstanceArn] ARN of the IAM Identity Center instance whose bound Application should be returned. Exactly one of `arn` or `identityCenterInstanceArn` must be specified.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetApplicationArgs({
    this.arn,
    this.identityCenterInstanceArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'identityCenterInstanceArn': ?identityCenterInstanceArn,
      'region': ?region,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCenterInstanceArn: (() { final guardedValue = map['identityCenterInstanceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
