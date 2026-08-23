import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_args.dart';
import 'get_connection_result.dart';

/// Fetches details of a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
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
/// const example = aws.ec2.getVpnConnection({
///     filters: [{
///         name: "customer-gateway-id",
///         values: ["cgw-1234567890"],
///     }],
/// });
/// export const vpnConnectionId = example.then(example => example.vpnConnectionId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpn_connection(filters=[{
///     "name": "customer-gateway-id",
///     "values": ["cgw-1234567890"],
/// }])
/// pulumi.export("vpnConnectionId", example.vpn_connection_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpnConnection.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpnConnectionFilterInputArgs
///             {
///                 Name = "customer-gateway-id",
///                 Values = new[]
///                 {
///                     "cgw-1234567890",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpnConnectionId"] = example.Apply(getVpnConnectionResult => getVpnConnectionResult.VpnConnectionId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.LookupVpnConnection(ctx, &ec2.LookupVpnConnectionArgs{
/// 			Filters: []ec2.GetVpnConnectionFilter{
/// 				{
/// 					Name: "customer-gateway-id",
/// 					Values: []string{
/// 						"cgw-1234567890",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpnConnectionId", example.VpnConnectionId)
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
/// data "aws_ec2_getvpnconnection" "example" {
///   filters {
///     name   = "customer-gateway-id"
///     values = ["cgw-1234567890"]
///   }
/// }
///
/// output "vpnConnectionId" {
///   value = data.aws_ec2_getvpnconnection.example.vpn_connection_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpnConnectionArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpnConnectionFilterArgs;
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
///         final var example = Ec2Functions.getVpnConnection(GetVpnConnectionArgs.builder()
///             .filters(GetVpnConnectionFilterArgs.builder()
///                 .name("customer-gateway-id")
///                 .values("cgw-1234567890")
///                 .build())
///             .build());
///
///         ctx.export("vpnConnectionId", example.vpnConnectionId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpnConnection
///       arguments:
///         filters:
///           - name: customer-gateway-id
///             values:
///               - cgw-1234567890
/// outputs:
///   vpnConnectionId: ${example.vpnConnectionId}
/// ```
///
///
/// ### Find by VPN Connection ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpnConnection({
///     vpnConnectionId: "vpn-abcd1234567890",
/// });
/// export const gatewayAssociationState = example.then(example => example.gatewayAssociationState);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpn_connection(vpn_connection_id="vpn-abcd1234567890")
/// pulumi.export("gatewayAssociationState", example.gateway_association_state)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpnConnection.Invoke(new()
///     {
///         VpnConnectionId = "vpn-abcd1234567890",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gatewayAssociationState"] = example.Apply(getVpnConnectionResult => getVpnConnectionResult.GatewayAssociationState),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.LookupVpnConnection(ctx, &ec2.LookupVpnConnectionArgs{
/// 			VpnConnectionId: pulumi.StringRef("vpn-abcd1234567890"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gatewayAssociationState", example.GatewayAssociationState)
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
/// data "aws_ec2_getvpnconnection" "example" {
///   vpn_connection_id = "vpn-abcd1234567890"
/// }
///
/// output "gatewayAssociationState" {
///   value = data.aws_ec2_getvpnconnection.example.gateway_association_state
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpnConnectionArgs;
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
///         final var example = Ec2Functions.getVpnConnection(GetVpnConnectionArgs.builder()
///             .vpnConnectionId("vpn-abcd1234567890")
///             .build());
///
///         ctx.export("gatewayAssociationState", example.gatewayAssociationState());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpnConnection
///       arguments:
///         vpnConnectionId: vpn-abcd1234567890
/// outputs:
///   gatewayAssociationState: ${example.gatewayAssociationState}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpn_get_connection_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpn/getConnection:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}
