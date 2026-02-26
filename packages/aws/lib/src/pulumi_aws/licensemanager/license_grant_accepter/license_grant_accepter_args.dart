// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LicenseGrantAccepter.
class LicenseGrantAccepterArgs {
  /// The ARN of the grant to accept.
  final Input<String> grantArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LicenseGrantAccepterArgs({
    required this.grantArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grantArn'] = grantArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LicenseGrantAccepterArgs.fromMap(Map<String, dynamic> map) {
    return LicenseGrantAccepterArgs(
      grantArn: Input.asInput<String>(map['grantArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
