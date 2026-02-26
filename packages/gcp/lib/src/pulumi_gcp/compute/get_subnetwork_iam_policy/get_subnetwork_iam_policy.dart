import 'package:pulumi/pulumi.dart';
import 'get_subnetwork_iam_policy_args.dart';
import 'get_subnetwork_iam_policy_result.dart';

/// Retrieves the current IAM policy data for subnetwork
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.compute.getSubnetworkIamPolicy({
/// project: network_with_private_secondary_ip_ranges.project,
/// region: network_with_private_secondary_ip_ranges.region,
/// subnetwork: network_with_private_secondary_ip_ranges.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.get_subnetwork_iam_policy(project=network_with_private_secondary_ip_ranges["project"],
/// region=network_with_private_secondary_ip_ranges["region"],
/// subnetwork=network_with_private_secondary_ip_ranges["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Compute.GetSubnetworkIamPolicy.Invoke(new()
/// {
/// Project = network_with_private_secondary_ip_ranges.Project,
/// Region = network_with_private_secondary_ip_ranges.Region,
/// Subnetwork = network_with_private_secondary_ip_ranges.Name,
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
/// _, err := compute.GetSubnetworkIamPolicy(ctx, &compute.GetSubnetworkIamPolicyArgs{
/// Project:    pulumi.StringRef(network_with_private_secondary_ip_ranges.Project),
/// Region:     pulumi.StringRef(network_with_private_secondary_ip_ranges.Region),
/// Subnetwork: network_with_private_secondary_ip_ranges.Name,
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
/// import com.pulumi.gcp.compute.inputs.GetSubnetworkIamPolicyArgs;
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
/// final var policy = ComputeFunctions.getSubnetworkIamPolicy(GetSubnetworkIamPolicyArgs.builder()
/// .project(network_with_private_secondary_ip_ranges.project())
/// .region(network_with_private_secondary_ip_ranges.region())
/// .subnetwork(network_with_private_secondary_ip_ranges.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:compute:getSubnetworkIamPolicy
/// arguments:
/// project: ${["network-with-private-secondary-ip-ranges"].project}
/// region: ${["network-with-private-secondary-ip-ranges"].region}
/// subnetwork: ${["network-with-private-secondary-ip-ranges"].name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetworkIamPolicyResult> getSubnetworkIamPolicy(
  GetSubnetworkIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSubnetworkIamPolicy:getSubnetworkIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyResult.fromMap(result);
}
