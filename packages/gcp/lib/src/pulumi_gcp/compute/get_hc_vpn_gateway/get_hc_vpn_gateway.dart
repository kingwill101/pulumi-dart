import 'package:pulumi/pulumi.dart';
import 'get_hc_vpn_gateway_args.dart';
import 'get_hc_vpn_gateway_result.dart';

/// Get a HA VPN Gateway within GCE from its name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gateway = gcp.compute.getHcVpnGateway({
/// name: "foobar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gateway = gcp.compute.get_hc_vpn_gateway(name="foobar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var gateway = Gcp.Compute.GetHcVpnGateway.Invoke(new()
/// {
/// Name = "foobar",
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
/// _, err := compute.GetHcVpnGateway(ctx, &compute.GetHcVpnGatewayArgs{
/// Name: "foobar",
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
/// import com.pulumi.gcp.compute.inputs.GetHcVpnGatewayArgs;
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
/// final var gateway = ComputeFunctions.getHcVpnGateway(GetHcVpnGatewayArgs.builder()
/// .name("foobar")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// gateway:
/// fn::invoke:
/// function: gcp:compute:getHcVpnGateway
/// arguments:
/// name: foobar
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetHcVpnGatewayResult> getHcVpnGateway(
  GetHcVpnGatewayArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getHcVpnGateway:getHcVpnGateway',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHcVpnGatewayResult.fromMap(result);
}
