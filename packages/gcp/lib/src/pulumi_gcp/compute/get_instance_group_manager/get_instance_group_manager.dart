import 'package:pulumi/pulumi.dart';
import 'get_instance_group_manager_args.dart';
import 'get_instance_group_manager_result.dart';

/// Get a Compute Instance Group Manager within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups#managed_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const igm1 = gcp.compute.getInstanceGroupManager({
/// name: "my-igm",
/// zone: "us-central1-a",
/// });
/// const igm2 = gcp.compute.getInstanceGroupManager({
/// selfLink: "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// igm1 = gcp.compute.get_instance_group_manager(name="my-igm",
/// zone="us-central1-a")
/// igm2 = gcp.compute.get_instance_group_manager(self_link="https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var igm1 = Gcp.Compute.GetInstanceGroupManager.Invoke(new()
/// {
/// Name = "my-igm",
/// Zone = "us-central1-a",
/// });
///
/// var igm2 = Gcp.Compute.GetInstanceGroupManager.Invoke(new()
/// {
/// SelfLink = "https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm",
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
/// _, err := compute.LookupInstanceGroupManager(ctx, &compute.LookupInstanceGroupManagerArgs{
/// Name: pulumi.StringRef("my-igm"),
/// Zone: pulumi.StringRef("us-central1-a"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.LookupInstanceGroupManager(ctx, &compute.LookupInstanceGroupManagerArgs{
/// SelfLink: pulumi.StringRef("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm"),
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
/// import com.pulumi.gcp.compute.inputs.GetInstanceGroupManagerArgs;
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
/// final var igm1 = ComputeFunctions.getInstanceGroupManager(GetInstanceGroupManagerArgs.builder()
/// .name("my-igm")
/// .zone("us-central1-a")
/// .build());
///
/// final var igm2 = ComputeFunctions.getInstanceGroupManager(GetInstanceGroupManagerArgs.builder()
/// .selfLink("https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// igm1:
/// fn::invoke:
/// function: gcp:compute:getInstanceGroupManager
/// arguments:
/// name: my-igm
/// zone: us-central1-a
/// igm2:
/// fn::invoke:
/// function: gcp:compute:getInstanceGroupManager
/// arguments:
/// selfLink: https://www.googleapis.com/compute/v1/projects/myproject/zones/us-central1-a/instanceGroupManagers/my-igm
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceGroupManagerResult> getInstanceGroupManager(
  GetInstanceGroupManagerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroupManager:getInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult.fromMap(result);
}
