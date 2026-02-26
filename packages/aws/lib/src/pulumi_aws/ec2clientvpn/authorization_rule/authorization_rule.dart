import 'package:pulumi/pulumi.dart';
import 'authorization_rule_args.dart';

/// Provides authorization rules for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2clientvpn.AuthorizationRule("example", {
/// clientVpnEndpointId: exampleAwsEc2ClientVpnEndpoint.id,
/// targetNetworkCidr: exampleAwsSubnet.cidrBlock,
/// authorizeAllGroups: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.AuthorizationRule("example",
/// client_vpn_endpoint_id=example_aws_ec2_client_vpn_endpoint["id"],
/// target_network_cidr=example_aws_subnet["cidrBlock"],
/// authorize_all_groups=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2ClientVpn.AuthorizationRule("example", new()
/// {
/// ClientVpnEndpointId = exampleAwsEc2ClientVpnEndpoint.Id,
/// TargetNetworkCidr = exampleAwsSubnet.CidrBlock,
/// AuthorizeAllGroups = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2clientvpn.NewAuthorizationRule(ctx, "example", &ec2clientvpn.AuthorizationRuleArgs{
/// ClientVpnEndpointId: pulumi.Any(exampleAwsEc2ClientVpnEndpoint.Id),
/// TargetNetworkCidr:   pulumi.Any(exampleAwsSubnet.CidrBlock),
/// AuthorizeAllGroups:  pulumi.Bool(true),
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
/// import com.pulumi.aws.ec2clientvpn.AuthorizationRule;
/// import com.pulumi.aws.ec2clientvpn.AuthorizationRuleArgs;
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
/// var example = new AuthorizationRule("example", AuthorizationRuleArgs.builder()
/// .clientVpnEndpointId(exampleAwsEc2ClientVpnEndpoint.id())
/// .targetNetworkCidr(exampleAwsSubnet.cidrBlock())
/// .authorizeAllGroups(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2clientvpn:AuthorizationRule
/// properties:
/// clientVpnEndpointId: ${exampleAwsEc2ClientVpnEndpoint.id}
/// targetNetworkCidr: ${exampleAwsSubnet.cidrBlock}
/// authorizeAllGroups: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using the endpoint ID, target network CIDR, and group name:
///
///
/// **Using `pulumi import` to import** AWS Client VPN authorization rules using the endpoint ID and target network CIDR. If there is a specific group name, include that also. All values are separated by a `,`. For example:
///
/// Using the endpoint ID and target network CIDR:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/authorizationRule:AuthorizationRule example cvpn-endpoint-0ac3a1abbccddd666,10.1.0.0/24
/// ```
///
/// Using the endpoint ID, target network CIDR, and group name:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/authorizationRule:AuthorizationRule example cvpn-endpoint-0ac3a1abbccddd666,10.1.0.0/24,team-a
/// ```
class AuthorizationRule extends CustomResource {
  /// The ID of the group to which the authorization rule grants access. One of <span pulumi-lang-nodejs="`accessGroupId`" pulumi-lang-dotnet="`AccessGroupId`" pulumi-lang-go="`accessGroupId`" pulumi-lang-python="`access_group_id`" pulumi-lang-yaml="`accessGroupId`" pulumi-lang-java="`accessGroupId`">`access_group_id`</span> or <span pulumi-lang-nodejs="`authorizeAllGroups`" pulumi-lang-dotnet="`AuthorizeAllGroups`" pulumi-lang-go="`authorizeAllGroups`" pulumi-lang-python="`authorize_all_groups`" pulumi-lang-yaml="`authorizeAllGroups`" pulumi-lang-java="`authorizeAllGroups`">`authorize_all_groups`</span> must be set.
  late final Output<String?> accessGroupId;

  /// Indicates whether the authorization rule grants access to all clients. One of <span pulumi-lang-nodejs="`accessGroupId`" pulumi-lang-dotnet="`AccessGroupId`" pulumi-lang-go="`accessGroupId`" pulumi-lang-python="`access_group_id`" pulumi-lang-yaml="`accessGroupId`" pulumi-lang-java="`accessGroupId`">`access_group_id`</span> or <span pulumi-lang-nodejs="`authorizeAllGroups`" pulumi-lang-dotnet="`AuthorizeAllGroups`" pulumi-lang-go="`authorizeAllGroups`" pulumi-lang-python="`authorize_all_groups`" pulumi-lang-yaml="`authorizeAllGroups`" pulumi-lang-java="`authorizeAllGroups`">`authorize_all_groups`</span> must be set.
  late final Output<bool?> authorizeAllGroups;

  /// The ID of the Client VPN endpoint.
  late final Output<String> clientVpnEndpointId;

  /// A brief description of the authorization rule.
  late final Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  late final Output<String> targetNetworkCidr;

  AuthorizationRule(
    String name, {
    AuthorizationRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/authorizationRule:AuthorizationRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessGroupId = registerOutput<String?>('accessGroupId');
    this.authorizeAllGroups = registerOutput<bool?>('authorizeAllGroups');
    this.clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.targetNetworkCidr = registerOutput<String>('targetNetworkCidr');
  }
}
