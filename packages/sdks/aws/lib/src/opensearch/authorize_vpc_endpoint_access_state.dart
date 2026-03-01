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
    pulumi.Output<String>? account,
    pulumi.Output<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>? authorizedPrincipals,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? region,
  }) :
      account = pulumi.Input.asOptionalInput<String>(account),
      authorizedPrincipals = pulumi.Input.asOptionalInput<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>(authorizedPrincipals),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      account: map['account'] == null ? null : pulumi.Output.create<String>(map['account'] as String),
      authorizedPrincipals: map['authorizedPrincipals'] == null ? null : pulumi.Output.create<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>(pulumi.Input.decodeList<AuthorizeVpcEndpointAccessAuthorizedPrincipal>(map['authorizedPrincipals'], (value) => AuthorizeVpcEndpointAccessAuthorizedPrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

