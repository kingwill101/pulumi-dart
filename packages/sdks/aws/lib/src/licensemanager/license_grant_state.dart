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
    pulumi.Output<List<String>>? allowedOperations,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? homeRegion,
    pulumi.Output<String>? licenseArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentArn,
    pulumi.Output<String>? principal,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? version,
  }) :
      allowedOperations = pulumi.Input.asOptionalInput<List<String>>(allowedOperations),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      homeRegion = pulumi.Input.asOptionalInput<String>(homeRegion),
      licenseArn = pulumi.Input.asOptionalInput<String>(licenseArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentArn = pulumi.Input.asOptionalInput<String>(parentArn),
      principal = pulumi.Input.asOptionalInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      allowedOperations: map['allowedOperations'] == null ? null : pulumi.Output.create<List<String>>((map['allowedOperations'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      homeRegion: map['homeRegion'] == null ? null : pulumi.Output.create<String>(map['homeRegion'] as String),
      licenseArn: map['licenseArn'] == null ? null : pulumi.Output.create<String>(map['licenseArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentArn: map['parentArn'] == null ? null : pulumi.Output.create<String>(map['parentArn'] as String),
      principal: map['principal'] == null ? null : pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

