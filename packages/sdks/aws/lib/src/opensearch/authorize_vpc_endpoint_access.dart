import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorize_vpc_endpoint_access_args.dart';
import 'authorize_vpc_endpoint_access_authorized_principal.dart';
import 'authorize_vpc_endpoint_access_state.dart';

/// Resource for managing an AWS OpenSearch Authorize Vpc Endpoint Access.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = new aws.opensearch.AuthorizeVpcEndpointAccess("test", {
///     domainName: testAwsOpensearchDomain.domainName,
///     account: current.then(current => current.accountId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.opensearch.AuthorizeVpcEndpointAccess("test",
///     domain_name=test_aws_opensearch_domain["domainName"],
///     account=current.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var test = new Aws.OpenSearch.AuthorizeVpcEndpointAccess("test", new()
///     {
///         DomainName = testAwsOpensearchDomain.DomainName,
///         Account = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewAuthorizeVpcEndpointAccess(ctx, "test", &opensearch.AuthorizeVpcEndpointAccessArgs{
/// 			DomainName: pulumi.Any(testAwsOpensearchDomain.DomainName),
/// 			Account:    pulumi.String(current.AccountId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.opensearch.AuthorizeVpcEndpointAccess;
/// import com.pulumi.aws.opensearch.AuthorizeVpcEndpointAccessArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var test = new AuthorizeVpcEndpointAccess("test", AuthorizeVpcEndpointAccessArgs.builder()
///             .domainName(testAwsOpensearchDomain.domainName())
///             .account(current.accountId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:opensearch:AuthorizeVpcEndpointAccess
///     properties:
///       domainName: ${testAwsOpensearchDomain.domainName}
///       account: ${current.accountId}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
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
  late final pulumi.Output<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>> authorizedPrincipals;
  /// Name of OpenSearch Service domain to provide access to.
  late final pulumi.Output<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AuthorizeVpcEndpointAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizeVpcEndpointAccess]. {@macro pulumi_opensearch_authorize_vpc_endpoint_access_authorize_vpc_endpoint_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    this.authorizedPrincipals = registerOutput<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>('authorizedPrincipals');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [AuthorizeVpcEndpointAccess] resource's state with the given [name] and [id].
  static AuthorizeVpcEndpointAccess get(
    String name,
    pulumi.Input<String> id, {
    AuthorizeVpcEndpointAccessState? state,
  }) {
    return AuthorizeVpcEndpointAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthorizeVpcEndpointAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/authorizeVpcEndpointAccess:AuthorizeVpcEndpointAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.account = registerOutput<String>('account');
    this.authorizedPrincipals = registerOutput<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>('authorizedPrincipals');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
