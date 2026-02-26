import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/create-snapshots)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //by name
/// const snapshot = gcp.compute.getSnapshot({
/// name: "my-snapshot",
/// });
/// // using a filter
/// const latest_snapshot = gcp.compute.getSnapshot({
/// filter: "name != my-snapshot",
/// mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// #by name
/// snapshot = gcp.compute.get_snapshot(name="my-snapshot")
/// # using a filter
/// latest_snapshot = gcp.compute.get_snapshot(filter="name != my-snapshot",
/// most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// //by name
/// var snapshot = Gcp.Compute.GetSnapshot.Invoke(new()
/// {
/// Name = "my-snapshot",
/// });
///
/// // using a filter
/// var latest_snapshot = Gcp.Compute.GetSnapshot.Invoke(new()
/// {
/// Filter = "name != my-snapshot",
/// MostRecent = true,
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
/// // by name
/// _, err := compute.LookupSnapshot(ctx, &compute.LookupSnapshotArgs{
/// Name: pulumi.StringRef("my-snapshot"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // using a filter
/// _, err = compute.LookupSnapshot(ctx, &compute.LookupSnapshotArgs{
/// Filter:     pulumi.StringRef("name != my-snapshot"),
/// MostRecent: pulumi.BoolRef(true),
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
/// import com.pulumi.gcp.compute.inputs.GetSnapshotArgs;
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
/// //by name
/// final var snapshot = ComputeFunctions.getSnapshot(GetSnapshotArgs.builder()
/// .name("my-snapshot")
/// .build());
///
/// // using a filter
/// final var latest-snapshot = ComputeFunctions.getSnapshot(GetSnapshotArgs.builder()
/// .filter("name != my-snapshot")
/// .mostRecent(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// #by name
/// snapshot:
/// fn::invoke:
/// function: gcp:compute:getSnapshot
/// arguments:
/// name: my-snapshot
/// # using a filter
/// latest-snapshot:
/// fn::invoke:
/// function: gcp:compute:getSnapshot
/// arguments:
/// filter: name != my-snapshot
/// mostRecent: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSnapshot:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
