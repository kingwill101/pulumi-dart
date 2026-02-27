// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganization.
class GetOrganizationArgs {
  /// The domain name of the Organization.
  ///
  /// > **NOTE:** One of `organization` or `domain` must be specified.
  final pulumi.Input<String>? domain;

  /// The Organization's numeric ID, including an optional `organizations/` prefix.
  final pulumi.Input<String>? organization;

  GetOrganizationArgs({
    this.domain,
    this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final organizationValue = organization;
    if (organizationValue != null) {
      map['organization'] = organizationValue;
    }
    return map;
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      organization: pulumi.Input.asOptionalInput<String>(map['organization']),
    );
  }
}
