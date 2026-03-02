// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codeartifact_repository_permissions_policy_repository_permissions_policy_args_doc}
/// The set of arguments for RepositoryPermissionsPolicy.
/// {@endtemplate}
/// {@macro pulumi_codeartifact_repository_permissions_policy_repository_permissions_policy_args_doc}
class RepositoryPermissionsPolicyArgs {
  /// The name of the domain on which to set the resource policy.
  final pulumi.Input<String> domain;
  /// The account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;
  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  final pulumi.Input<String> policyDocument;
  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  final pulumi.Input<String>? policyRevision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the repository to set the resource policy on.
  final pulumi.Input<String> repository;

  /// Creates a new [RepositoryPermissionsPolicyArgs].
  /// [domain] The name of the domain on which to set the resource policy.
  /// [domainOwner] The account number of the AWS account that owns the domain.
  /// [policyDocument] A JSON policy string to be set as the access control resource policy on the provided domain.
  /// [policyRevision] The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] The name of the repository to set the resource policy on.
  RepositoryPermissionsPolicyArgs({
    required this.domain,
    this.domainOwner,
    required this.policyDocument,
    this.policyRevision,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'domainOwner': ?domainOwner,
      'policyDocument': policyDocument,
      'policyRevision': ?policyRevision,
      'region': ?region,
      'repository': repository,
    };
  }

  factory RepositoryPermissionsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryPermissionsPolicyArgs(
      domain: (map['domain'] as String).input(),
      domainOwner: map['domainOwner'] == null ? null : ((map['domainOwner'] as String).input()).input(),
      policyDocument: (map['policyDocument'] as String).input(),
      policyRevision: map['policyRevision'] == null ? null : ((map['policyRevision'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      repository: (map['repository'] as String).input(),
    );
  }
}

