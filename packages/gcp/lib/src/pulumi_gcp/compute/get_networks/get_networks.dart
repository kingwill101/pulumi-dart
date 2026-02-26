import 'package:pulumi/pulumi.dart';
import 'get_networks_args.dart';
import 'get_networks_result.dart';

/// List all networks in a specified Google Cloud project.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_networks = gcp.compute.getNetworks({
/// project: "my-cloud-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_networks = gcp.compute.get_networks(project="my-cloud-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_networks = Gcp.Compute.GetNetworks.Invoke(new()
/// {
/// Project = "my-cloud-project",
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
/// _, err := compute.GetNetworks(ctx, &compute.GetNetworksArgs{
/// Project: pulumi.StringRef("my-cloud-project"),
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
/// import com.pulumi.gcp.compute.inputs.GetNetworksArgs;
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
/// final var my-networks = ComputeFunctions.getNetworks(GetNetworksArgs.builder()
/// .project("my-cloud-project")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-networks:
/// fn::invoke:
/// function: gcp:compute:getNetworks
/// arguments:
/// project: my-cloud-project
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworks:getNetworks',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}
