// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainPermissions.
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

  DomainPermissionsArgs({
    required this.domain,
    this.domainOwner,
    this.policyDocument,
    this.policyRevision,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final domainOwnerValue = domainOwner;
    if (domainOwnerValue != null) {
      map['domainOwner'] = domainOwnerValue;
    }
    final policyDocumentValue = policyDocument;
    if (policyDocumentValue != null) {
      map['policyDocument'] = policyDocumentValue;
    }
    final policyRevisionValue = policyRevision;
    if (policyRevisionValue != null) {
      map['policyRevision'] = policyRevisionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return DomainPermissionsArgs(
      domain: pulumi.Input.asInput<String>(map['domain']),
      domainOwner: pulumi.Input.asOptionalInput<String>(map['domainOwner']),
      policyDocument:
          pulumi.Input.asOptionalInput<String>(map['policyDocument']),
      policyRevision:
          pulumi.Input.asOptionalInput<String>(map['policyRevision']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
