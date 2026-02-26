import 'package:pulumi/pulumi.dart';
import '../authorize_vpc_endpoint_access_authorized_principal/authorize_vpc_endpoint_access_authorized_principal.dart';
import 'authorize_vpc_endpoint_access_args.dart';

/// Resource for managing an AWS OpenSearch Authorize Vpc Endpoint Access.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = new aws.opensearch.AuthorizeVpcEndpointAccess("test", {
/// domainName: testAwsOpensearchDomain.domainName,
/// account: current.then(current => current.accountId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.opensearch.AuthorizeVpcEndpointAccess("test",
/// domain_name=test_aws_opensearch_domain["domainName"],
/// account=current.account_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var test = new Aws.OpenSearch.AuthorizeVpcEndpointAccess("test", new()
/// {
/// DomainName = testAwsOpensearchDomain.DomainName,
/// Account = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = opensearch.NewAuthorizeVpcEndpointAccess(ctx, "test", &opensearch.AuthorizeVpcEndpointAccessArgs{
/// DomainName: pulumi.Any(testAwsOpensearchDomain.DomainName),
/// Account:    pulumi.String(current.AccountId),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// var test = new AuthorizeVpcEndpointAccess("test", AuthorizeVpcEndpointAccessArgs.builder()
/// .domainName(testAwsOpensearchDomain.domainName())
/// .account(current.accountId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:opensearch:AuthorizeVpcEndpointAccess
/// properties:
/// domainName: ${testAwsOpensearchDomain.domainName}
/// account: ${current.accountId}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Authorize Vpc Endpoint Access using the <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> and <span pulumi-lang-nodejs="`account`" pulumi-lang-dotnet="`Account`" pulumi-lang-go="`account`" pulumi-lang-python="`account`" pulumi-lang-yaml="`account`" pulumi-lang-java="`account`">`account`</span> separated by a comma (,). For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/authorizeVpcEndpointAccess:AuthorizeVpcEndpointAccess example authorize_vpc_endpoint_access-id-12345678,123456789012
/// ```
class AuthorizeVpcEndpointAccess extends CustomResource {
  /// AWS account ID to grant access to.
  late final Output<String> account;

  /// Information about the Amazon Web Services account or service that was provided access to the domain. See authorized principal attribute for further details.
  late final Output<List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>
      authorizedPrincipals;

  /// Name of OpenSearch Service domain to provide access to.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AuthorizeVpcEndpointAccess(
    String name, {
    AuthorizeVpcEndpointAccessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/authorizeVpcEndpointAccess:AuthorizeVpcEndpointAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.account = Output.createUnknown<String>();
    this.authorizedPrincipals = Output.createUnknown<
        List<AuthorizeVpcEndpointAccessAuthorizedPrincipal>>();
    this.domainName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
