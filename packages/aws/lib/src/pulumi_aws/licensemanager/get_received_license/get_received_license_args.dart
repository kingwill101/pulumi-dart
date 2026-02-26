// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReceivedLicense.
class GetReceivedLicenseArgs {
  /// The ARN of the received license you want data for.
  final Input<String> licenseArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetReceivedLicenseArgs({
    required this.licenseArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['licenseArn'] = licenseArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetReceivedLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseArgs(
      licenseArn: Input.asInput<String>(map['licenseArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
