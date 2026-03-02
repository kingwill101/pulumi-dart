// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorize_vpc_endpoint_access_authorized_principal.dart';

/// Input properties used for looking up and filtering AuthorizeVpcEndpointAccess resources.
class AuthorizeVpcEndpointAccessState {
  /// AWS account ID to grant access to.
  final pulumi.Input<String>? account;
  /// Information about the Amazon Web Services account or service that was provided access to the domain. See authorized principal attribute for further details.
  final pulumi.Input<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>? authorizedPrincipals;
  /// Name of OpenSearch Service domain to provide access to.
  final pulumi.Input<String>? domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AuthorizeVpcEndpointAccessState].
  /// [account] AWS account ID to grant access to.
  /// [authorizedPrincipals] Information about the Amazon Web Services account or service that was provided access to the domain. See authorized principal attribute for further details.
  /// [domainName] Name of OpenSearch Service domain to provide access to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AuthorizeVpcEndpointAccessState({
    this.account,
    this.authorizedPrincipals,
    this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account,
      'authorizedPrincipals': ?pulumi.Input.mapOptionalInputValue<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>, List<Map<String, dynamic>>>(authorizedPrincipals, (value) => pulumi.Input.encodeList<AuthorizeVpcEndpointAccessAuthorizedPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domainName': ?domainName,
      'region': ?region,
    };
  }

  factory AuthorizeVpcEndpointAccessState.fromMap(Map<String, dynamic> map) {
    return AuthorizeVpcEndpointAccessState(
      account: map['account'] == null ? null : (map['account'] as String).input(),
      authorizedPrincipals: map['authorizedPrincipals'] == null ? null : (pulumi.Input.decodeList<AuthorizeVpcEndpointAccessAuthorizedPrincipal>(map['authorizedPrincipals'], (value) => AuthorizeVpcEndpointAccessAuthorizedPrincipal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

