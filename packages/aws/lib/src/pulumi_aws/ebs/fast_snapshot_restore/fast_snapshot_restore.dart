import 'package:pulumi/pulumi.dart';
import '../fast_snapshot_restore_timeouts/fast_snapshot_restore_timeouts.dart';
import 'fast_snapshot_restore_args.dart';

/// Resource for managing an EBS (Elastic Block Storage) Fast Snapshot Restore.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.FastSnapshotRestore("example", {
/// availabilityZone: "us-west-2a",
/// snapshotId: exampleAwsEbsSnapshot.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.FastSnapshotRestore("example",
/// availability_zone="us-west-2a",
/// snapshot_id=example_aws_ebs_snapshot["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ebs.FastSnapshotRestore("example", new()
/// {
/// AvailabilityZone = "us-west-2a",
/// SnapshotId = exampleAwsEbsSnapshot.Id,
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
/// _, err := ebs.NewFastSnapshotRestore(ctx, "example", &ebs.FastSnapshotRestoreArgs{
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// SnapshotId:       pulumi.Any(exampleAwsEbsSnapshot.Id),
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
/// import com.pulumi.aws.ebs.FastSnapshotRestore;
/// import com.pulumi.aws.ebs.FastSnapshotRestoreArgs;
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
/// var example = new FastSnapshotRestore("example", FastSnapshotRestoreArgs.builder()
/// .availabilityZone("us-west-2a")
/// .snapshotId(exampleAwsEbsSnapshot.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ebs:FastSnapshotRestore
/// properties:
/// availabilityZone: us-west-2a
/// snapshotId: ${exampleAwsEbsSnapshot.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) EBS Fast Snapshot Restore using the <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> and <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/fastSnapshotRestore:FastSnapshotRestore example us-west-2a,snap-abcdef123456
/// ```
class FastSnapshotRestore extends CustomResource {
  /// Availability zone in which to enable fast snapshot restores.
  late final Output<String> availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the snapshot.
  late final Output<String> snapshotId;

  /// State of fast snapshot restores. Valid values are <span pulumi-lang-nodejs="`enabling`" pulumi-lang-dotnet="`Enabling`" pulumi-lang-go="`enabling`" pulumi-lang-python="`enabling`" pulumi-lang-yaml="`enabling`" pulumi-lang-java="`enabling`">`enabling`</span>, <span pulumi-lang-nodejs="`optimizing`" pulumi-lang-dotnet="`Optimizing`" pulumi-lang-go="`optimizing`" pulumi-lang-python="`optimizing`" pulumi-lang-yaml="`optimizing`" pulumi-lang-java="`optimizing`">`optimizing`</span>, <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span>, <span pulumi-lang-nodejs="`disabling`" pulumi-lang-dotnet="`Disabling`" pulumi-lang-go="`disabling`" pulumi-lang-python="`disabling`" pulumi-lang-yaml="`disabling`" pulumi-lang-java="`disabling`">`disabling`</span>, <span pulumi-lang-nodejs="`disabled`" pulumi-lang-dotnet="`Disabled`" pulumi-lang-go="`disabled`" pulumi-lang-python="`disabled`" pulumi-lang-yaml="`disabled`" pulumi-lang-java="`disabled`">`disabled`</span>.
  late final Output<String> state;
  late final Output<FastSnapshotRestoreTimeouts?> timeouts;

  FastSnapshotRestore(
    String name, {
    FastSnapshotRestoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/fastSnapshotRestore:FastSnapshotRestore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.availabilityZone = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.snapshotId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<FastSnapshotRestoreTimeouts?>();
  }
}
