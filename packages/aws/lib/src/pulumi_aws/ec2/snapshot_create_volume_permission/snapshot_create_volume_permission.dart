import 'package:pulumi/pulumi.dart';
import 'snapshot_create_volume_permission_args.dart';

/// Adds permission to create volumes off of a given EBS Snapshot.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.Volume("example", {
/// availabilityZone: "us-west-2a",
/// size: 40,
/// });
/// const exampleSnapshot = new aws.ebs.Snapshot("example_snapshot", {volumeId: example.id});
/// const examplePerm = new aws.ec2.SnapshotCreateVolumePermission("example_perm", {
/// snapshotId: exampleSnapshot.id,
/// accountId: "12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.Volume("example",
/// availability_zone="us-west-2a",
/// size=40)
/// example_snapshot = aws.ebs.Snapshot("example_snapshot", volume_id=example.id)
/// example_perm = aws.ec2.SnapshotCreateVolumePermission("example_perm",
/// snapshot_id=example_snapshot.id,
/// account_id="12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ebs.Volume("example", new()
/// {
/// AvailabilityZone = "us-west-2a",
/// Size = 40,
/// });
///
/// var exampleSnapshot = new Aws.Ebs.Snapshot("example_snapshot", new()
/// {
/// VolumeId = example.Id,
/// });
///
/// var examplePerm = new Aws.Ec2.SnapshotCreateVolumePermission("example_perm", new()
/// {
/// SnapshotId = exampleSnapshot.Id,
/// AccountId = "12345678",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Size:             pulumi.Int(40),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSnapshot, err := ebs.NewSnapshot(ctx, "example_snapshot", &ebs.SnapshotArgs{
/// VolumeId: example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSnapshotCreateVolumePermission(ctx, "example_perm", &ec2.SnapshotCreateVolumePermissionArgs{
/// SnapshotId: exampleSnapshot.ID(),
/// AccountId:  pulumi.String("12345678"),
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
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
/// import com.pulumi.aws.ebs.Snapshot;
/// import com.pulumi.aws.ebs.SnapshotArgs;
/// import com.pulumi.aws.ec2.SnapshotCreateVolumePermission;
/// import com.pulumi.aws.ec2.SnapshotCreateVolumePermissionArgs;
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
/// var example = new Volume("example", VolumeArgs.builder()
/// .availabilityZone("us-west-2a")
/// .size(40)
/// .build());
///
/// var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
/// .volumeId(example.id())
/// .build());
///
/// var examplePerm = new SnapshotCreateVolumePermission("examplePerm", SnapshotCreateVolumePermissionArgs.builder()
/// .snapshotId(exampleSnapshot.id())
/// .accountId("12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePerm:
/// type: aws:ec2:SnapshotCreateVolumePermission
/// name: example_perm
/// properties:
/// snapshotId: ${exampleSnapshot.id}
/// accountId: '12345678'
/// example:
/// type: aws:ebs:Volume
/// properties:
/// availabilityZone: us-west-2a
/// size: 40
/// exampleSnapshot:
/// type: aws:ebs:Snapshot
/// name: example_snapshot
/// properties:
/// volumeId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
class SnapshotCreateVolumePermission extends CustomResource {
  /// An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  late final Output<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A snapshot ID
  late final Output<String> snapshotId;

  SnapshotCreateVolumePermission(
    String name, {
    SnapshotCreateVolumePermissionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/snapshotCreateVolumePermission:SnapshotCreateVolumePermission',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.snapshotId = Output.createUnknown<String>();
  }
}
