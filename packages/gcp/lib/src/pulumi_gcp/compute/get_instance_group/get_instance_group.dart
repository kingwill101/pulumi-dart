import 'package:pulumi/pulumi.dart';
import 'get_instance_group_args.dart';
import 'get_instance_group_result.dart';

/// Get a Compute Instance Group within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroups)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const all = gcp.compute.getInstanceGroup({
/// name: "instance-group-name",
/// zone: "us-central1-a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// all = gcp.compute.get_instance_group(name="instance-group-name",
/// zone="us-central1-a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Gcp.Compute.GetInstanceGroup.Invoke(new()
/// {
/// Name = "instance-group-name",
/// Zone = "us-central1-a",
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
/// _, err := compute.LookupInstanceGroup(ctx, &compute.LookupInstanceGroupArgs{
/// Name: pulumi.StringRef("instance-group-name"),
/// Zone: pulumi.StringRef("us-central1-a"),
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
/// import com.pulumi.gcp.compute.inputs.GetInstanceGroupArgs;
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
/// final var all = ComputeFunctions.getInstanceGroup(GetInstanceGroupArgs.builder()
/// .name("instance-group-name")
/// .zone("us-central1-a")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: gcp:compute:getInstanceGroup
/// arguments:
/// name: instance-group-name
/// zone: us-central1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceGroupResult> getInstanceGroup(
  GetInstanceGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroup:getInstanceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult.fromMap(result);
}
