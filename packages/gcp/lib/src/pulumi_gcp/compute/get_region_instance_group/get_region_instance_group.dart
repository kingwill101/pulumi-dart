import 'package:pulumi/pulumi.dart';
import 'get_region_instance_group_args.dart';
import 'get_region_instance_group_result.dart';

/// Get a Compute Region Instance Group within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/latest/regionInstanceGroups).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const group = gcp.compute.getRegionInstanceGroup({
/// name: "instance-group-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// group = gcp.compute.get_region_instance_group(name="instance-group-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @group = Gcp.Compute.GetRegionInstanceGroup.Invoke(new()
/// {
/// Name = "instance-group-name",
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
/// _, err := compute.GetRegionInstanceGroup(ctx, &compute.GetRegionInstanceGroupArgs{
/// Name: pulumi.StringRef("instance-group-name"),
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
/// import com.pulumi.gcp.compute.inputs.GetRegionInstanceGroupArgs;
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
/// final var group = ComputeFunctions.getRegionInstanceGroup(GetRegionInstanceGroupArgs.builder()
/// .name("instance-group-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// group:
/// fn::invoke:
/// function: gcp:compute:getRegionInstanceGroup
/// arguments:
/// name: instance-group-name
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The most common use of this datasource will be to fetch information about the instances inside regional managed instance groups, for instance:
Future<GetRegionInstanceGroupResult> getRegionInstanceGroup(
  GetRegionInstanceGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionInstanceGroup:getRegionInstanceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupResult.fromMap(result);
}
