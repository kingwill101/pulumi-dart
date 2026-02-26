import 'package:pulumi/pulumi.dart';
import 'get_subnetworks_args.dart';
import 'get_subnetworks_result.dart';

/// Get subnetworks within GCE.
/// See [the official documentation](https://cloud.google.com/vpc/docs/subnets)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_subnetworks = gcp.compute.getSubnetworks({
/// filter: "ipCidrRange eq 192.168.178.0/24",
/// project: "my-project",
/// region: "us-east1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_subnetworks = gcp.compute.get_subnetworks(filter="ipCidrRange eq 192.168.178.0/24",
/// project="my-project",
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
/// var my_subnetworks = Gcp.Compute.GetSubnetworks.Invoke(new()
/// {
/// Filter = "ipCidrRange eq 192.168.178.0/24",
/// Project = "my-project",
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
/// _, err := compute.GetSubnetworks(ctx, &compute.GetSubnetworksArgs{
/// Filter:  pulumi.StringRef("ipCidrRange eq 192.168.178.0/24"),
/// Project: pulumi.StringRef("my-project"),
/// Region:  pulumi.StringRef("us-east1"),
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
/// import com.pulumi.gcp.compute.inputs.GetSubnetworksArgs;
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
/// final var my-subnetworks = ComputeFunctions.getSubnetworks(GetSubnetworksArgs.builder()
/// .filter("ipCidrRange eq 192.168.178.0/24")
/// .project("my-project")
/// .region("us-east1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// my-subnetworks:
/// fn::invoke:
/// function: gcp:compute:getSubnetworks
/// arguments:
/// filter: ipCidrRange eq 192.168.178.0/24
/// project: my-project
/// region: us-east1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetworksResult> getSubnetworks(
  GetSubnetworksArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworks:getSubnetworks',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworksResult.fromMap(result);
}
