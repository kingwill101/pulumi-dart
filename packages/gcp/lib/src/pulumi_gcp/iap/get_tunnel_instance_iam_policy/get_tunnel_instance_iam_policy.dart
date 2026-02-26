import 'package:pulumi/pulumi.dart';
import 'get_tunnel_instance_iam_policy_args.dart';
import 'get_tunnel_instance_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tunnelinstance
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelInstanceIamPolicy({
/// project: tunnelvm.project,
/// zone: tunnelvm.zone,
/// instance: tunnelvm.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_instance_iam_policy(project=tunnelvm["project"],
/// zone=tunnelvm["zone"],
/// instance=tunnelvm["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetTunnelInstanceIamPolicy.Invoke(new()
/// {
/// Project = tunnelvm.Project,
/// Zone = tunnelvm.Zone,
/// Instance = tunnelvm.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.GetTunnelInstanceIamPolicy(ctx, &iap.GetTunnelInstanceIamPolicyArgs{
/// Project:  pulumi.StringRef(tunnelvm.Project),
/// Zone:     pulumi.StringRef(tunnelvm.Zone),
/// Instance: tunnelvm.Name,
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
/// import com.pulumi.gcp.iap.IapFunctions;
/// import com.pulumi.gcp.iap.inputs.GetTunnelInstanceIamPolicyArgs;
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
/// final var policy = IapFunctions.getTunnelInstanceIamPolicy(GetTunnelInstanceIamPolicyArgs.builder()
/// .project(tunnelvm.project())
/// .zone(tunnelvm.zone())
/// .instance(tunnelvm.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getTunnelInstanceIamPolicy
/// arguments:
/// project: ${tunnelvm.project}
/// zone: ${tunnelvm.zone}
/// instance: ${tunnelvm.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTunnelInstanceIamPolicyResult> getTunnelInstanceIamPolicy(
  GetTunnelInstanceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelInstanceIamPolicy:getTunnelInstanceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTunnelInstanceIamPolicyResult.fromMap(result);
}
