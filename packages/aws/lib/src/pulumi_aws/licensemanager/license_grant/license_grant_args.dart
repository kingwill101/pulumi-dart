// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LicenseGrant.
class LicenseGrantArgs {
  /// A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  final pulumi.Input<List<String>> allowedOperations;

  /// The ARN of the license to grant.
  final pulumi.Input<String> licenseArn;

  /// The Name of the grant.
  final pulumi.Input<String>? name;

  /// The target account for the grant in the form of the ARN for an account principal of the root user.
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
      allowedOperations:
          pulumi.Input.asInput<List<String>>(map['allowedOperations']),
      licenseArn: pulumi.Input.asInput<String>(map['licenseArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      principal: pulumi.Input.asInput<String>(map['principal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
