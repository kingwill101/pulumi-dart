// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codeartifact_domain_permissions_domain_permissions_args_doc}
/// The set of arguments for DomainPermissions.
/// {@endtemplate}
/// {@macro pulumi_codeartifact_domain_permissions_domain_permissions_args_doc}
class DomainPermissionsArgs {
  /// The name of the domain on which to set the resource policy.
  final pulumi.Input<String> domain;
  /// The account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;
  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  final pulumi.Input<String>? policyDocument;
  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  final pulumi.Input<String>? policyRevision;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainPermissionsArgs].
  /// [domain] The name of the domain on which to set the resource policy.
  /// [domainOwner] The account number of the AWS account that owns the domain.
  /// [policyDocument] A JSON policy string to be set as the access control resource policy on the provided domain.
  /// [policyRevision] The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainPermissionsArgs({
    required String domain,
    String? domainOwner,
    String? policyDocument,
    String? policyRevision,
    String? region,
  }) :
      domain = pulumi.Input.asInput<String>(domain),
      domainOwner = pulumi.Input.asOptionalInput<String>(domainOwner),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      policyRevision = pulumi.Input.asOptionalInput<String>(policyRevision),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'domainOwner': ?domainOwner,
      'policyDocument': ?policyDocument,
      'policyRevision': ?policyRevision,
      'region': ?region,
    };
  }

  factory DomainPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return DomainPermissionsArgs(
      domain: map['domain'] as String,
      domainOwner: map['domainOwner'] == null ? null : map['domainOwner'] as String,
      policyDocument: map['policyDocument'] == null ? null : map['policyDocument'] as String,
      policyRevision: map['policyRevision'] == null ? null : map['policyRevision'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

