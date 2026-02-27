// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RepositoryPermissionsPolicy.
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

  RepositoryPermissionsPolicyArgs({
    required this.domain,
    this.domainOwner,
    required this.policyDocument,
    this.policyRevision,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final domainOwnerValue = domainOwner;
    if (domainOwnerValue != null) {
      map['domainOwner'] = domainOwnerValue;
    }
    map['policyDocument'] = policyDocument;
    final policyRevisionValue = policyRevision;
    if (policyRevisionValue != null) {
      map['policyRevision'] = policyRevisionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory RepositoryPermissionsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryPermissionsPolicyArgs(
      domain: pulumi.Input.asInput<String>(map['domain']),
      domainOwner: pulumi.Input.asOptionalInput<String>(map['domainOwner']),
      policyDocument: pulumi.Input.asInput<String>(map['policyDocument']),
      policyRevision:
          pulumi.Input.asOptionalInput<String>(map['policyRevision']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asInput<String>(map['repository']),
    );
  }
}
