import 'package:pulumi/pulumi.dart';
import 'get_disk_args.dart';
import 'get_disk_result.dart';

/// Get information about a Google Compute Persistent disks.
///
/// [the official documentation](https://cloud.google.com/compute/docs/disks) and its [API](https://cloud.google.com/compute/docs/reference/latest/disks).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const persistent_boot_disk = gcp.compute.getDisk({
/// name: "persistent-boot-disk",
/// project: "example",
/// });
/// const _default = new gcp.compute.Instance("default", {bootDisk: {
/// source: persistent_boot_disk.then(persistent_boot_disk => persistent_boot_disk.selfLink),
/// autoDelete: false,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// persistent_boot_disk = gcp.compute.get_disk(name="persistent-boot-disk",
/// project="example")
/// default = gcp.compute.Instance("default", boot_disk={
/// "source": persistent_boot_disk.self_link,
/// "auto_delete": False,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var persistent_boot_disk = Gcp.Compute.GetDisk.Invoke(new()
/// {
/// Name = "persistent-boot-disk",
/// Project = "example",
/// });
///
/// var @default = new Gcp.Compute.Instance("default", new()
/// {
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// Source = persistent_boot_disk.Apply(persistent_boot_disk => persistent_boot_disk.Apply(getDiskResult => getDiskResult.SelfLink)),
/// AutoDelete = false,
/// },
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
/// persistent_boot_disk, err := compute.LookupDisk(ctx, &compute.LookupDiskArgs{
/// Name:    "persistent-boot-disk",
/// Project: pulumi.StringRef("example"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// BootDisk: &compute.InstanceBootDiskArgs{
/// Source:     pulumi.String(persistent_boot_disk.SelfLink),
/// AutoDelete: pulumi.Bool(false),
/// },
/// })
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
/// import com.pulumi.gcp.compute.inputs.GetDiskArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
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
/// final var persistent-boot-disk = ComputeFunctions.getDisk(GetDiskArgs.builder()
/// .name("persistent-boot-disk")
/// .project("example")
/// .build());
///
/// var default_ = new Instance("default", InstanceArgs.builder()
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .source(persistent_boot_disk.selfLink())
/// .autoDelete(false)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Instance
/// properties:
/// bootDisk:
/// source: ${["persistent-boot-disk"].selfLink}
/// autoDelete: false
/// variables:
/// persistent-boot-disk:
/// fn::invoke:
/// function: gcp:compute:getDisk
/// arguments:
/// name: persistent-boot-disk
/// project: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getDisk:getDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}
