// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_licensemanager_license_grant_license_grant_args_doc}
/// The set of arguments for LicenseGrant.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_license_grant_license_grant_args_doc}
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

  /// Creates a new [LicenseGrantArgs].
  /// [allowedOperations] A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  /// [licenseArn] The ARN of the license to grant.
  /// [name] The Name of the grant.
  /// [principal] The target account for the grant in the form of the ARN for an account principal of the root user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LicenseGrantArgs({
    required this.allowedOperations,
    required this.licenseArn,
    this.name,
    required this.principal,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': allowedOperations,
      'licenseArn': licenseArn,
      'name': ?name,
      'principal': principal,
      'region': ?region,
    };
  }

  factory LicenseGrantArgs.fromMap(Map<String, dynamic> map) {
    return LicenseGrantArgs(
      allowedOperations: pulumi.Input.fromValue((map['allowedOperations'] as List).cast<String>()),
      licenseArn: pulumi.Input.fromValue(map['licenseArn'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: pulumi.Input.fromValue(map['principal'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

