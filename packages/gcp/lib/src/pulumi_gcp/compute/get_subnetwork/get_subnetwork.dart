import 'package:pulumi/pulumi.dart';
import 'get_subnetwork_args.dart';
import 'get_subnetwork_result.dart';

/// Get a subnetwork within GCE from its name and region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_subnetwork = gcp.compute.getSubnetwork({
/// name: "default-us-east1",
/// region: "us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnetwork = gcp.compute.get_subnetwork(name="default-us-east1",
/// region="us-east1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_subnetwork = Gcp.Compute.GetSubnetwork.Invoke(new()
/// {
/// Name = "default-us-east1",
/// Region = "us-east1",
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
/// _, err := compute.LookupSubnetwork(ctx, &compute.LookupSubnetworkArgs{
/// Name:   pulumi.StringRef("default-us-east1"),
/// Region: pulumi.StringRef("us-east1"),
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
/// import com.pulumi.gcp.compute.inputs.GetSubnetworkArgs;
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
/// final var my-subnetwork = ComputeFunctions.getSubnetwork(GetSubnetworkArgs.builder()
/// .name("default-us-east1")
/// .region("us-east1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-subnetwork:
/// fn::invoke:
/// function: gcp:compute:getSubnetwork
/// arguments:
/// name: default-us-east1
/// region: us-east1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetworkResult> getSubnetwork(
  GetSubnetworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetwork:getSubnetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult.fromMap(result);
}
