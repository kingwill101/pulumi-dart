import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_rule_args.dart';
import 'authorization_rule_state.dart';

/// Provides authorization rules for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2clientvpn.AuthorizationRule("example", {
///     clientVpnEndpointId: exampleAwsEc2ClientVpnEndpoint.id,
///     targetNetworkCidr: exampleAwsSubnet.cidrBlock,
///     authorizeAllGroups: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.AuthorizationRule("example",
///     client_vpn_endpoint_id=example_aws_ec2_client_vpn_endpoint["id"],
///     target_network_cidr=example_aws_subnet["cidrBlock"],
///     authorize_all_groups=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2ClientVpn.AuthorizationRule("example", new()
///     {
///         ClientVpnEndpointId = exampleAwsEc2ClientVpnEndpoint.Id,
///         TargetNetworkCidr = exampleAwsSubnet.CidrBlock,
///         AuthorizeAllGroups = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2clientvpn.NewAuthorizationRule(ctx, "example", &ec2clientvpn.AuthorizationRuleArgs{
/// 			ClientVpnEndpointId: pulumi.Any(exampleAwsEc2ClientVpnEndpoint.Id),
/// 			TargetNetworkCidr:   pulumi.Any(exampleAwsSubnet.CidrBlock),
/// 			AuthorizeAllGroups:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2clientvpn_authorizationrule" "example" {
///   client_vpn_endpoint_id = exampleAwsEc2ClientVpnEndpoint.id
///   target_network_cidr    = exampleAwsSubnet.cidrBlock
///   authorize_all_groups   = true
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AuthorizationRule("example", AuthorizationRuleArgs.builder()
///             .clientVpnEndpointId(exampleAwsEc2ClientVpnEndpoint.id())
///             .targetNetworkCidr(exampleAwsSubnet.cidrBlock())
///             .authorizeAllGroups(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2clientvpn:AuthorizationRule
///     properties:
///       clientVpnEndpointId: ${exampleAwsEc2ClientVpnEndpoint.id}
///       targetNetworkCidr: ${exampleAwsSubnet.cidrBlock}
///       authorizeAllGroups: true
/// ```
///
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
class AuthorizationRule extends pulumi.CustomResource {
  /// The ID of the group to which the authorization rule grants access. One of `accessGroupId` or `authorizeAllGroups` must be set.
  late final pulumi.Output<String?> accessGroupId;
  /// Indicates whether the authorization rule grants access to all clients. One of `accessGroupId` or `authorizeAllGroups` must be set.
  late final pulumi.Output<bool?> authorizeAllGroups;
  /// The ID of the Client VPN endpoint.
  late final pulumi.Output<String> clientVpnEndpointId;
  /// A brief description of the authorization rule.
  late final pulumi.Output<String?> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  late final pulumi.Output<String> targetNetworkCidr;

  /// Creates a new [AuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationRule]. {@macro pulumi_ec2clientvpn_authorization_rule_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationRule(
    String name, {
    AuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessGroupId = registerOutput<String?>('accessGroupId');
    authorizeAllGroups = registerOutput<bool?>('authorizeAllGroups');
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    targetNetworkCidr = registerOutput<String>('targetNetworkCidr');
  }

  /// Gets an existing [AuthorizationRule] resource's state with the given [name] and [id].
  static AuthorizationRule get(
    String name,
    pulumi.Input<String> id, {
    AuthorizationRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AuthorizationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AuthorizationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/authorizationRule:AuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessGroupId = registerOutput<String?>('accessGroupId');
    authorizeAllGroups = registerOutput<bool?>('authorizeAllGroups');
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    targetNetworkCidr = registerOutput<String>('targetNetworkCidr');
  }

  /// Creates a typed reference to an existing [AuthorizationRule] resource.
  AuthorizationRule.reference(String urn)
    : super(
        'aws:ec2clientvpn/authorizationRule:AuthorizationRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessGroupId = registerOutput<String?>('accessGroupId');
    authorizeAllGroups = registerOutput<bool?>('authorizeAllGroups');
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    targetNetworkCidr = registerOutput<String>('targetNetworkCidr');
  }
}
