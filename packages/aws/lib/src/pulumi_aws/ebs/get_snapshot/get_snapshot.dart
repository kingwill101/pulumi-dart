import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// Use this data source to get information about an EBS Snapshot for use when provisioning EBS Volumes
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ebsVolume = aws.ebs.getSnapshot({
/// mostRecent: true,
/// owners: ["self"],
/// filters: [
/// {
/// name: "volume-size",
/// values: ["40"],
/// },
/// {
/// name: "tag:Name",
/// values: ["Example"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ebs_volume = aws.ebs.get_snapshot(most_recent=True,
/// owners=["self"],
/// filters=[
/// {
/// "name": "volume-size",
/// "values": ["40"],
/// },
/// {
/// "name": "tag:Name",
/// "values": ["Example"],
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ebsVolume = Aws.Ebs.GetSnapshot.Invoke(new()
/// {
/// MostRecent = true,
/// Owners = new[]
/// {
/// "self",
/// },
/// Filters = new[]
/// {
/// new Aws.Ebs.Inputs.GetSnapshotFilterInputArgs
/// {
/// Name = "volume-size",
/// Values = new[]
/// {
/// "40",
/// },
/// },
/// new Aws.Ebs.Inputs.GetSnapshotFilterInputArgs
/// {
/// Name = "tag:Name",
/// Values = new[]
/// {
/// "Example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ebs.LookupSnapshot(ctx, &ebs.LookupSnapshotArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: []string{
/// "self",
/// },
/// Filters: []ebs.GetSnapshotFilter{
/// {
/// Name: "volume-size",
/// Values: []string{
/// "40",
/// },
/// },
/// {
/// Name: "tag:Name",
/// Values: []string{
/// "Example",
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
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetSnapshotArgs;
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
/// final var ebsVolume = EbsFunctions.getSnapshot(GetSnapshotArgs.builder()
/// .mostRecent(true)
/// .owners("self")
/// .filters(
/// GetSnapshotFilterArgs.builder()
/// .name("volume-size")
/// .values("40")
/// .build(),
/// GetSnapshotFilterArgs.builder()
/// .name("tag:Name")
/// .values("Example")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// ebsVolume:
/// fn::invoke:
/// function: aws:ebs:getSnapshot
/// arguments:
/// mostRecent: true
/// owners:
/// - self
/// filters:
/// - name: volume-size
/// values:
/// - '40'
/// - name: tag:Name
/// values:
/// - Example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getSnapshot:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
