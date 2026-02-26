// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganization.
class GetOrganizationArgs {
  /// The domain name of the Organization.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`organization`" pulumi-lang-dotnet="`Organization`" pulumi-lang-go="`organization`" pulumi-lang-python="`organization`" pulumi-lang-yaml="`organization`" pulumi-lang-java="`organization`">`organization`</span> or <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span> must be specified.
  final Input<String>? domain;

  /// The Organization's numeric ID, including an optional `organizations/` prefix.
  final Input<String>? organization;

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
      domain: Input.asOptionalInput<String>(map['domain']),
      organization: Input.asOptionalInput<String>(map['organization']),
    );
  }
}
