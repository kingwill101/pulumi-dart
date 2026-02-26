import 'package:pulumi/pulumi.dart';
import 'get_network_peering_args2.dart';
import 'get_network_peering_result2.dart';

/// Use this data source to get details about a network peering resource.
///
/// To get more information about network peering, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPeerings)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetworkPeering = gcp.vmwareengine.getNetworkPeering({
/// name: "my-network-peering",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network_peering = gcp.vmwareengine.get_network_peering(name="my-network-peering")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myNetworkPeering = Gcp.VMwareEngine.GetNetworkPeering.Invoke(new()
/// {
/// Name = "my-network-peering",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vmwareengine.LookupNetworkPeering(ctx, &vmwareengine.LookupNetworkPeeringArgs{
/// Name: "my-network-peering",
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
/// import com.pulumi.gcp.vmwareengine.VmwareengineFunctions;
/// import com.pulumi.gcp.vmwareengine.inputs.GetNetworkPeeringArgs;
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
/// final var myNetworkPeering = VmwareengineFunctions.getNetworkPeering(GetNetworkPeeringArgs.builder()
/// .name("my-network-peering")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myNetworkPeering:
/// fn::invoke:
/// function: gcp:vmwareengine:getNetworkPeering
/// arguments:
/// name: my-network-peering
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkPeeringResult2> getNetworkPeering2(
  GetNetworkPeeringArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult2.fromMap(result);
}
