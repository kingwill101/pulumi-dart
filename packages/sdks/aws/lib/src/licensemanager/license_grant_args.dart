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
  LicenseGrantArgs({
    required pulumi.Output<List<String>> allowedOperations,
    required pulumi.Output<String> licenseArn,
    pulumi.Output<String>? name,
    required pulumi.Output<String> principal,
    pulumi.Output<String>? region,
  }) :
      allowedOperations = pulumi.Input.asInput<List<String>>(allowedOperations),
      licenseArn = pulumi.Input.asInput<String>(licenseArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      principal = pulumi.Input.asInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      allowedOperations: pulumi.Output.create<List<String>>((map['allowedOperations'] as List).cast<String>()),
      licenseArn: pulumi.Output.create<String>(map['licenseArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principal: pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

