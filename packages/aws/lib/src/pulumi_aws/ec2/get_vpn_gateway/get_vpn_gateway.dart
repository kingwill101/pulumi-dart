import 'package:pulumi/pulumi.dart';
import 'get_vpn_gateway_args.dart';
import 'get_vpn_gateway_result.dart';

/// The VPN Gateway data source provides details about
/// a specific VPN gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.ec2.getVpnGateway({
/// filters: [{
/// name: "tag:Name",
/// values: ["vpn-gw"],
/// }],
/// });
/// export const vpnGatewayId = selected.then(selected => selected.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.ec2.get_vpn_gateway(filters=[{
/// "name": "tag:Name",
/// "values": ["vpn-gw"],
/// }])
/// pulumi.export("vpnGatewayId", selected.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var selected = Aws.Ec2.GetVpnGateway.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetVpnGatewayFilterInputArgs
/// {
/// Name = "tag:Name",
/// Values = new[]
/// {
/// "vpn-gw",
/// },
/// },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["vpnGatewayId"] = selected.Apply(getVpnGatewayResult => getVpnGatewayResult.Id),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// selected, err := ec2.LookupVpnGateway(ctx, &ec2.LookupVpnGatewayArgs{
/// Filters: []ec2.GetVpnGatewayFilter{
/// {
/// Name: "tag:Name",
/// Values: []string{
/// "vpn-gw",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("vpnGatewayId", selected.Id)
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpnGatewayArgs;
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
/// final var selected = Ec2Functions.getVpnGateway(GetVpnGatewayArgs.builder()
/// .filters(GetVpnGatewayFilterArgs.builder()
/// .name("tag:Name")
/// .values("vpn-gw")
/// .build())
/// .build());
///
/// ctx.export("vpnGatewayId", selected.id());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// selected:
/// fn::invoke:
/// function: aws:ec2:getVpnGateway
/// arguments:
/// filters:
/// - name: tag:Name
/// values:
/// - vpn-gw
/// outputs:
/// vpnGatewayId: ${selected.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpnGatewayResult> getVpnGateway(
  GetVpnGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpnGateway:getVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult.fromMap(result);
}
