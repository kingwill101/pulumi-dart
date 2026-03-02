// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicenseGrant resources.
class LicenseGrantState {
  /// A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  final pulumi.Input<List<String>>? allowedOperations;
  /// The grant ARN.
  final pulumi.Input<String>? arn;
  /// The home region for the license.
  final pulumi.Input<String>? homeRegion;
  /// The ARN of the license to grant.
  final pulumi.Input<String>? licenseArn;
  /// The Name of the grant.
  final pulumi.Input<String>? name;
  /// The parent ARN.
  final pulumi.Input<String>? parentArn;
  /// The target account for the grant in the form of the ARN for an account principal of the root user.
  final pulumi.Input<String>? principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The grant status.
  final pulumi.Input<String>? status;
  /// The grant version.
  final pulumi.Input<String>? version;

  /// Creates a new [LicenseGrantState].
  /// [allowedOperations] A list of the allowed operations for the grant. This is a subset of the allowed operations on the license.
  /// [arn] The grant ARN.
  /// [homeRegion] The home region for the license.
  /// [licenseArn] The ARN of the license to grant.
  /// [name] The Name of the grant.
  /// [parentArn] The parent ARN.
  /// [principal] The target account for the grant in the form of the ARN for an account principal of the root user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The grant status.
  /// [version] The grant version.
  LicenseGrantState({
    this.allowedOperations,
    this.arn,
    this.homeRegion,
    this.licenseArn,
    this.name,
    this.parentArn,
    this.principal,
    this.region,
    this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': ?allowedOperations,
      'arn': ?arn,
      'homeRegion': ?homeRegion,
      'licenseArn': ?licenseArn,
      'name': ?name,
      'parentArn': ?parentArn,
      'principal': ?principal,
      'region': ?region,
      'status': ?status,
      'version': ?version,
    };
  }

  factory LicenseGrantState.fromMap(Map<String, dynamic> map) {
    return LicenseGrantState(
      allowedOperations: map['allowedOperations'] == null ? null : (((map['allowedOperations'] as List).cast<String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      homeRegion: map['homeRegion'] == null ? null : ((map['homeRegion'] as String).input()).input(),
      licenseArn: map['licenseArn'] == null ? null : ((map['licenseArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      parentArn: map['parentArn'] == null ? null : ((map['parentArn'] as String).input()).input(),
      principal: map['principal'] == null ? null : ((map['principal'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
    );
  }
}

