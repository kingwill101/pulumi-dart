// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_licensemanager_license_grant_accepter_license_grant_accepter_args_doc}
/// The set of arguments for LicenseGrantAccepter.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_license_grant_accepter_license_grant_accepter_args_doc}
class LicenseGrantAccepterArgs {
  /// The ARN of the grant to accept.
  final pulumi.Input<String> grantArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LicenseGrantAccepterArgs].
  /// [grantArn] The ARN of the grant to accept.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LicenseGrantAccepterArgs({required String grantArn, String? region})
    : grantArn = pulumi.Input.asInput<String>(grantArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'grantArn': grantArn, 'region': ?region};
  }

  factory LicenseGrantAccepterArgs.fromMap(Map<String, dynamic> map) {
    return LicenseGrantAccepterArgs(
      grantArn: map['grantArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
