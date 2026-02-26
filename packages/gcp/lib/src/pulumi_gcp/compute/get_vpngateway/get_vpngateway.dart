import 'package:pulumi/pulumi.dart';
import 'get_vpngateway_args.dart';
import 'get_vpngateway_result.dart';

/// Get a VPN gateway within GCE from its name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_vpn_gateway = gcp.compute.getVPNGateway({
/// name: "vpn-gateway-us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_vpn_gateway = gcp.compute.get_vpn_gateway(name="vpn-gateway-us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_vpn_gateway = Gcp.Compute.GetVPNGateway.Invoke(new()
/// {
/// Name = "vpn-gateway-us-east1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.LookupVPNGateway(ctx, &compute.LookupVPNGatewayArgs{
/// Name: "vpn-gateway-us-east1",
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetVPNGatewayArgs;
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
/// final var my-vpn-gateway = ComputeFunctions.getVPNGateway(GetVPNGatewayArgs.builder()
/// .name("vpn-gateway-us-east1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-vpn-gateway:
/// fn::invoke:
/// function: gcp:compute:getVPNGateway
/// arguments:
/// name: vpn-gateway-us-east1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVPNGatewayResult> getVPNGateway(
  GetVPNGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getVPNGateway:getVPNGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVPNGatewayResult.fromMap(result);
}
