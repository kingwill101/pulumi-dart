import 'package:pulumi/pulumi.dart';
import 'get_network_policy_args.dart';
import 'get_network_policy_result.dart';

/// Use this data source to get details about a network policy resource.
///
/// To get more information about network policy, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myNetworkPolicy = gcp.vmwareengine.getNetworkPolicy({
/// name: "my-network-policy",
/// location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_network_policy = gcp.vmwareengine.get_network_policy(name="my-network-policy",
/// location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myNetworkPolicy = Gcp.VMwareEngine.GetNetworkPolicy.Invoke(new()
/// {
/// Name = "my-network-policy",
/// Location = "us-central1",
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
/// _, err := vmwareengine.LookupNetworkPolicy(ctx, &vmwareengine.LookupNetworkPolicyArgs{
/// Name:     "my-network-policy",
/// Location: "us-central1",
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
/// import com.pulumi.gcp.vmwareengine.inputs.GetNetworkPolicyArgs;
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
/// final var myNetworkPolicy = VmwareengineFunctions.getNetworkPolicy(GetNetworkPolicyArgs.builder()
/// .name("my-network-policy")
/// .location("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myNetworkPolicy:
/// fn::invoke:
/// function: gcp:vmwareengine:getNetworkPolicy
/// arguments:
/// name: my-network-policy
/// location: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkPolicyResult> getNetworkPolicy(
  GetNetworkPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPolicy:getNetworkPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPolicyResult.fromMap(result);
}
