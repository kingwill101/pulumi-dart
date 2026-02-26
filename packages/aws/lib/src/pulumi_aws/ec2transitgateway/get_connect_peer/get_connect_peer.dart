import 'package:pulumi/pulumi.dart';
import 'get_connect_peer_args.dart';
import 'get_connect_peer_result.dart';

/// Get information on an EC2 Transit Gateway Connect Peer.
///
/// ## Example Usage
///
/// ### By Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getConnectPeer({
/// filters: [{
/// name: "transit-gateway-attachment-id",
/// values: ["tgw-attach-12345678"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect_peer(filters=[{
/// "name": "transit-gateway-attachment-id",
/// "values": ["tgw-attach-12345678"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2TransitGateway.GetConnectPeer.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetConnectPeerFilterInputArgs
/// {
/// Name = "transit-gateway-attachment-id",
/// Values = new[]
/// {
/// "tgw-attach-12345678",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.LookupConnectPeer(ctx, &ec2transitgateway.LookupConnectPeerArgs{
/// Filters: []ec2transitgateway.GetConnectPeerFilter{
/// {
/// Name: "transit-gateway-attachment-id",
/// Values: []string{
/// "tgw-attach-12345678",
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectPeerArgs;
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
/// final var example = Ec2transitgatewayFunctions.getConnectPeer(GetConnectPeerArgs.builder()
/// .filters(GetConnectPeerFilterArgs.builder()
/// .name("transit-gateway-attachment-id")
/// .values("tgw-attach-12345678")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getConnectPeer
/// arguments:
/// filters:
/// - name: transit-gateway-attachment-id
/// values:
/// - tgw-attach-12345678
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Identifier
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getConnectPeer({
/// transitGatewayConnectPeerId: "tgw-connect-peer-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_connect_peer(transit_gateway_connect_peer_id="tgw-connect-peer-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2TransitGateway.GetConnectPeer.Invoke(new()
/// {
/// TransitGatewayConnectPeerId = "tgw-connect-peer-12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.LookupConnectPeer(ctx, &ec2transitgateway.LookupConnectPeerArgs{
/// TransitGatewayConnectPeerId: pulumi.StringRef("tgw-connect-peer-12345678"),
/// }, nil)
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetConnectPeerArgs;
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
/// final var example = Ec2transitgatewayFunctions.getConnectPeer(GetConnectPeerArgs.builder()
/// .transitGatewayConnectPeerId("tgw-connect-peer-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getConnectPeer
/// arguments:
/// transitGatewayConnectPeerId: tgw-connect-peer-12345678
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConnectPeerResult> getConnectPeer(
  GetConnectPeerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getConnectPeer:getConnectPeer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectPeerResult.fromMap(result);
}
