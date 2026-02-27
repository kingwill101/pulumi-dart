import 'package:pulumi/pulumi.dart' as pulumi;
import '../authorize_vpc_endpoint_access_authorized_principal/authorize_vpc_endpoint_access_authorized_principal.dart';
import 'authorize_vpc_endpoint_access_args.dart';

/// Resource for managing an AWS OpenSearch Authorize Vpc Endpoint Access.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Authorize Vpc Endpoint Access using the `domain_name` and `account` separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/authorizeVpcEndpointAccess:AuthorizeVpcEndpointAccess example authorize_vpc_endpoint_access-id-12345678,123456789012
/// ```
class AuthorizeVpcEndpointAccess extends pulumi.CustomResource {
  /// AWS account ID to grant access to.
  late final pulumi.Output<String> account;

  /// Information about the Amazon Web Services account or service that was provided access to the domain. See authorized principal attribute for further details.
  late final pulumi.Output<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>
      authorizedPrincipals;

  /// Name of OpenSearch Service domain to provide access to.
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AuthorizeVpcEndpointAccess(
    String name, {
    AuthorizeVpcEndpointAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/authorizeVpcEndpointAccess:AuthorizeVpcEndpointAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.account = registerOutput<String>('account');
    this.authorizedPrincipals =
        registerOutput<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>(
            'authorizedPrincipals');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
