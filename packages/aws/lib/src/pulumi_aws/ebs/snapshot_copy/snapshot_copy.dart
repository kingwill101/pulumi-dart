import 'package:pulumi/pulumi.dart';
import 'snapshot_copy_args.dart';

/// Creates a Snapshot of a snapshot.
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
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// const exampleSnapshot = new aws.ebs.Snapshot("example_snapshot", {
/// volumeId: example.id,
/// tags: {
/// Name: "HelloWorld_snap",
/// },
/// });
/// const exampleCopy = new aws.ebs.SnapshotCopy("example_copy", {
/// sourceSnapshotId: exampleSnapshot.id,
/// sourceRegion: "us-west-2",
/// tags: {
/// Name: "HelloWorld_copy_snap",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.Volume("example",
/// availability_zone="us-west-2a",
/// size=40,
/// tags={
/// "Name": "HelloWorld",
/// })
/// example_snapshot = aws.ebs.Snapshot("example_snapshot",
/// volume_id=example.id,
/// tags={
/// "Name": "HelloWorld_snap",
/// })
/// example_copy = aws.ebs.SnapshotCopy("example_copy",
/// source_snapshot_id=example_snapshot.id,
/// source_region="us-west-2",
/// tags={
/// "Name": "HelloWorld_copy_snap",
/// })
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
/// Tags =
/// {
/// { "Name", "HelloWorld" },
/// },
/// });
///
/// var exampleSnapshot = new Aws.Ebs.Snapshot("example_snapshot", new()
/// {
/// VolumeId = example.Id,
/// Tags =
/// {
/// { "Name", "HelloWorld_snap" },
/// },
/// });
///
/// var exampleCopy = new Aws.Ebs.SnapshotCopy("example_copy", new()
/// {
/// SourceSnapshotId = exampleSnapshot.Id,
/// SourceRegion = "us-west-2",
/// Tags =
/// {
/// { "Name", "HelloWorld_copy_snap" },
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
/// example, err := ebs.NewVolume(ctx, "example", &ebs.VolumeArgs{
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Size:             pulumi.Int(40),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleSnapshot, err := ebs.NewSnapshot(ctx, "example_snapshot", &ebs.SnapshotArgs{
/// VolumeId: example.ID(),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld_snap"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ebs.NewSnapshotCopy(ctx, "example_copy", &ebs.SnapshotCopyArgs{
/// SourceSnapshotId: exampleSnapshot.ID(),
/// SourceRegion:     pulumi.String("us-west-2"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld_copy_snap"),
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
/// import com.pulumi.aws.ebs.Volume;
/// import com.pulumi.aws.ebs.VolumeArgs;
/// import com.pulumi.aws.ebs.Snapshot;
/// import com.pulumi.aws.ebs.SnapshotArgs;
/// import com.pulumi.aws.ebs.SnapshotCopy;
/// import com.pulumi.aws.ebs.SnapshotCopyArgs;
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
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
/// .volumeId(example.id())
/// .tags(Map.of("Name", "HelloWorld_snap"))
/// .build());
///
/// var exampleCopy = new SnapshotCopy("exampleCopy", SnapshotCopyArgs.builder()
/// .sourceSnapshotId(exampleSnapshot.id())
/// .sourceRegion("us-west-2")
/// .tags(Map.of("Name", "HelloWorld_copy_snap"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ebs:Volume
/// properties:
/// availabilityZone: us-west-2a
/// size: 40
/// tags:
/// Name: HelloWorld
/// exampleSnapshot:
/// type: aws:ebs:Snapshot
/// name: example_snapshot
/// properties:
/// volumeId: ${example.id}
/// tags:
/// Name: HelloWorld_snap
/// exampleCopy:
/// type: aws:ebs:SnapshotCopy
/// name: example_copy
/// properties:
/// sourceSnapshotId: ${exampleSnapshot.id}
/// sourceRegion: us-west-2
/// tags:
/// Name: HelloWorld_copy_snap
/// ```
/// <!--End PulumiCodeChooser -->
class SnapshotCopy extends CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final Output<String> arn;

  /// Specifies a completion duration to initiate a time-based snapshot copy. Time-based snapshot copy operations complete within the specified duration.  Value must be between 15 and 2880 minutes, in 15 minute increments only.
  late final Output<int?> completionDurationMinutes;

  /// The data encryption key identifier for the snapshot.
  late final Output<String> dataEncryptionKeyId;

  /// A description of what the snapshot is.
  late final Output<String?> description;

  /// Whether the snapshot is encrypted.
  late final Output<bool?> encrypted;

  /// The ARN for the KMS encryption key.
  late final Output<String?> kmsKeyId;
  late final Output<String> outpostArn;

  /// Value from an Amazon-maintained list (<span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>, `aws-marketplace`, <span pulumi-lang-nodejs="`microsoft`" pulumi-lang-dotnet="`Microsoft`" pulumi-lang-go="`microsoft`" pulumi-lang-python="`microsoft`" pulumi-lang-yaml="`microsoft`" pulumi-lang-java="`microsoft`">`microsoft`</span>) of snapshot owners.
  late final Output<String> ownerAlias;

  /// The AWS account ID of the snapshot owner.
  late final Output<String> ownerId;

  /// Indicates whether to permanently restore an archived snapshot.
  late final Output<bool?> permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The region of the source snapshot.
  late final Output<String> sourceRegion;

  /// The ARN for the snapshot to be copied.
  late final Output<String> sourceSnapshotId;

  /// The name of the storage tier. Valid values are <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> and <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. Default value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  late final Output<String> storageTier;

  /// A map of tags for the snapshot.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final Output<int?> temporaryRestoreDays;
  late final Output<String> volumeId;

  /// The size of the drive in GiBs.
  late final Output<int> volumeSize;

  SnapshotCopy(
    String name, {
    SnapshotCopyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotCopy:SnapshotCopy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.completionDurationMinutes = Output.createUnknown<int?>();
    this.dataEncryptionKeyId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.encrypted = Output.createUnknown<bool?>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.outpostArn = Output.createUnknown<String>();
    this.ownerAlias = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.permanentRestore = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.sourceRegion = Output.createUnknown<String>();
    this.sourceSnapshotId = Output.createUnknown<String>();
    this.storageTier = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.temporaryRestoreDays = Output.createUnknown<int?>();
    this.volumeId = Output.createUnknown<String>();
    this.volumeSize = Output.createUnknown<int>();
  }
}
