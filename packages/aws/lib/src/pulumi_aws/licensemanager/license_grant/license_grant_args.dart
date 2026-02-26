// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LicenseGrant.
class LicenseGrantArgs {
  /// A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  final Input<List<String>> allowedOperations;

  /// The ARN of the license to grant.
  final Input<String> licenseArn;

  /// The Name of the grant.
  final Input<String>? name;

  /// The target account for the grant in the form of the ARN for an account principal of the root user.
  final Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LicenseGrantArgs({
    required this.allowedOperations,
    required this.licenseArn,
    this.name,
    required this.principal,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedOperations'] = allowedOperations;
    map['licenseArn'] = licenseArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LicenseGrantArgs.fromMap(Map<String, dynamic> map) {
    return LicenseGrantArgs(
      allowedOperations: Input.asInput<List<String>>(map['allowedOperations']),
      licenseArn: Input.asInput<String>(map['licenseArn']),
      name: Input.asOptionalInput<String>(map['name']),
      principal: Input.asInput<String>(map['principal']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
