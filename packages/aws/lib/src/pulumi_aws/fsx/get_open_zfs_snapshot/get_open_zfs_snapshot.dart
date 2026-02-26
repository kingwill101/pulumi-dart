import 'package:pulumi/pulumi.dart';
import 'get_open_zfs_snapshot_args.dart';
import 'get_open_zfs_snapshot_result.dart';

/// Use this data source to get information about an Amazon FSx for OpenZFS Snapshot for use when provisioning new Volumes.
///
/// ## Example Usage
///
/// ### Root volume Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fsx.getOpenZfsSnapshot({
/// mostRecent: true,
/// filters: [{
/// name: "volume-id",
/// values: ["fsvol-073a32b6098a73feb"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fsx.get_open_zfs_snapshot(most_recent=True,
/// filters=[{
/// "name": "volume-id",
/// "values": ["fsvol-073a32b6098a73feb"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Fsx.GetOpenZfsSnapshot.Invoke(new()
/// {
/// MostRecent = true,
/// Filters = new[]
/// {
/// new Aws.Fsx.Inputs.GetOpenZfsSnapshotFilterInputArgs
/// {
/// Name = "volume-id",
/// Values = new[]
/// {
/// "fsvol-073a32b6098a73feb",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fsx.LookupOpenZfsSnapshot(ctx, &fsx.LookupOpenZfsSnapshotArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Filters: []fsx.GetOpenZfsSnapshotFilter{
/// {
/// Name: "volume-id",
/// Values: []string{
/// "fsvol-073a32b6098a73feb",
/// },
/// },
/// },
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
/// import com.pulumi.aws.fsx.FsxFunctions;
/// import com.pulumi.aws.fsx.inputs.GetOpenZfsSnapshotArgs;
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
/// final var example = FsxFunctions.getOpenZfsSnapshot(GetOpenZfsSnapshotArgs.builder()
/// .mostRecent(true)
/// .filters(GetOpenZfsSnapshotFilterArgs.builder()
/// .name("volume-id")
/// .values("fsvol-073a32b6098a73feb")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:fsx:getOpenZfsSnapshot
/// arguments:
/// mostRecent: true
/// filters:
/// - name: volume-id
/// values:
/// - fsvol-073a32b6098a73feb
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOpenZfsSnapshotResult> getOpenZfsSnapshot(
  GetOpenZfsSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOpenZfsSnapshot:getOpenZfsSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOpenZfsSnapshotResult.fromMap(result);
}
