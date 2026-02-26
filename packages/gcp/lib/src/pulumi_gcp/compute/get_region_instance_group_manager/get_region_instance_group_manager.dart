import 'package:pulumi/pulumi.dart';
import 'get_region_instance_group_manager_args.dart';
import 'get_region_instance_group_manager_result.dart';

/// Get a Compute Region Instance Group Manager within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups)
/// and [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionInstanceGroupManagers)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const rigm = gcp.compute.getRegionInstanceGroupManager({
/// name: "my-igm",
/// region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// rigm = gcp.compute.get_region_instance_group_manager(name="my-igm",
/// region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var rigm = Gcp.Compute.GetRegionInstanceGroupManager.Invoke(new()
/// {
/// Name = "my-igm",
/// Region = "us-central1",
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
/// _, err := compute.LookupRegionInstanceGroupManager(ctx, &compute.LookupRegionInstanceGroupManagerArgs{
/// Name:   pulumi.StringRef("my-igm"),
/// Region: pulumi.StringRef("us-central1"),
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
/// import com.pulumi.gcp.compute.inputs.GetRegionInstanceGroupManagerArgs;
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
/// final var rigm = ComputeFunctions.getRegionInstanceGroupManager(GetRegionInstanceGroupManagerArgs.builder()
/// .name("my-igm")
/// .region("us-central1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// rigm:
/// fn::invoke:
/// function: gcp:compute:getRegionInstanceGroupManager
/// arguments:
/// name: my-igm
/// region: us-central1
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionInstanceGroupManagerResult> getRegionInstanceGroupManager(
  GetRegionInstanceGroupManagerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceGroupManager:getRegionInstanceGroupManager',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult.fromMap(result);
}
