import 'package:pulumi/pulumi.dart';
import 'get_tunnel_dest_group_iam_policy_args.dart';
import 'get_tunnel_dest_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tunneldestgroup
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.iap.getTunnelDestGroupIamPolicy({
/// project: destGroup.project,
/// region: destGroup.region,
/// destGroup: destGroup.groupName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.iap.get_tunnel_dest_group_iam_policy(project=dest_group["project"],
/// region=dest_group["region"],
/// dest_group=dest_group["groupName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Iap.GetTunnelDestGroupIamPolicy.Invoke(new()
/// {
/// Project = destGroup.Project,
/// Region = destGroup.Region,
/// DestGroup = destGroup.GroupName,
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
/// _, err := iap.LookupTunnelDestGroupIamPolicy(ctx, &iap.LookupTunnelDestGroupIamPolicyArgs{
/// Project:   pulumi.StringRef(destGroup.Project),
/// Region:    pulumi.StringRef(destGroup.Region),
/// DestGroup: destGroup.GroupName,
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
/// import com.pulumi.gcp.iap.inputs.GetTunnelDestGroupIamPolicyArgs;
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
/// final var policy = IapFunctions.getTunnelDestGroupIamPolicy(GetTunnelDestGroupIamPolicyArgs.builder()
/// .project(destGroup.project())
/// .region(destGroup.region())
/// .destGroup(destGroup.groupName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:iap:getTunnelDestGroupIamPolicy
/// arguments:
/// project: ${destGroup.project}
/// region: ${destGroup.region}
/// destGroup: ${destGroup.groupName}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTunnelDestGroupIamPolicyResult> getTunnelDestGroupIamPolicy(
  GetTunnelDestGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:iap/getTunnelDestGroupIamPolicy:getTunnelDestGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTunnelDestGroupIamPolicyResult.fromMap(result);
}
