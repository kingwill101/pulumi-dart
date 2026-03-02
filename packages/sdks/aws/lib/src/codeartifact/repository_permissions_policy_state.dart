// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RepositoryPermissionsPolicy resources.
class RepositoryPermissionsPolicyState {
  /// The name of the domain on which to set the resource policy.
  final pulumi.Input<String>? domain;
  /// The account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;
  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  final pulumi.Input<String>? policyDocument;
  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  final pulumi.Input<String>? policyRevision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the repository to set the resource policy on.
  final pulumi.Input<String>? repository;
  /// The ARN of the resource associated with the resource policy.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [RepositoryPermissionsPolicyState].
  /// [domain] The name of the domain on which to set the resource policy.
  /// [domainOwner] The account number of the AWS account that owns the domain.
  /// [policyDocument] A JSON policy string to be set as the access control resource policy on the provided domain.
  /// [policyRevision] The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] The name of the repository to set the resource policy on.
  /// [resourceArn] The ARN of the resource associated with the resource policy.
  RepositoryPermissionsPolicyState({
    this.domain,
    this.domainOwner,
    this.policyDocument,
    this.policyRevision,
    this.region,
    this.repository,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'domainOwner': ?domainOwner,
      'policyDocument': ?policyDocument,
      'policyRevision': ?policyRevision,
      'region': ?region,
      'repository': ?repository,
      'resourceArn': ?resourceArn,
    };
  }

  factory RepositoryPermissionsPolicyState.fromMap(Map<String, dynamic> map) {
    return RepositoryPermissionsPolicyState(
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      domainOwner: map['domainOwner'] == null ? null : (map['domainOwner'] as String).input(),
      policyDocument: map['policyDocument'] == null ? null : (map['policyDocument'] as String).input(),
      policyRevision: map['policyRevision'] == null ? null : (map['policyRevision'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
    );
  }
}

