// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_licensemanager_get_received_license_get_received_license_args_doc}
/// Arguments for getReceivedLicense.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_get_received_license_get_received_license_args_doc}
class GetReceivedLicenseArgs {
  /// The ARN of the received license you want data for.
  final pulumi.Input<String> licenseArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetReceivedLicenseArgs].
  /// [licenseArn] The ARN of the received license you want data for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetReceivedLicenseArgs({
    required this.licenseArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseArn': licenseArn,
      'region': ?region,
    };
  }

  factory GetReceivedLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseArgs(
      licenseArn: pulumi.Input.fromValue(map['licenseArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
