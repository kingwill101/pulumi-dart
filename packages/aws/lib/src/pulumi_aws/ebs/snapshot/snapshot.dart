import 'package:pulumi/pulumi.dart';
import 'snapshot_args.dart';

/// Creates a Snapshot of an EBS Volume.
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
/// _, err = ebs.NewSnapshot(ctx, "example_snapshot", &ebs.SnapshotArgs{
/// VolumeId: example.ID(),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld_snap"),
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
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import EBS Snapshot using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/snapshot:Snapshot id snap-049df61146c4d7901
/// ```
class Snapshot extends CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final Output<String> arn;

  /// The data encryption key identifier for the snapshot.
  late final Output<String> dataEncryptionKeyId;

  /// A description of what the snapshot is.
  late final Output<String?> description;

  /// Whether the snapshot is encrypted.
  late final Output<bool> encrypted;

  /// The ARN for the KMS encryption key.
  late final Output<String> kmsKeyId;

  /// The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot.
  late final Output<String?> outpostArn;

  /// Value from an Amazon-maintained list (<span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>, `aws-marketplace`, <span pulumi-lang-nodejs="`microsoft`" pulumi-lang-dotnet="`Microsoft`" pulumi-lang-go="`microsoft`" pulumi-lang-python="`microsoft`" pulumi-lang-yaml="`microsoft`" pulumi-lang-java="`microsoft`">`microsoft`</span>) of snapshot owners.
  late final Output<String> ownerAlias;

  /// The AWS account ID of the EBS snapshot owner.
  late final Output<String> ownerId;

  /// Indicates whether to permanently restore an archived snapshot.
  late final Output<bool?> permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the storage tier. Valid values are <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> and <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. Default value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  late final Output<String> storageTier;

  /// A map of tags to assign to the snapshot. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final Output<int?> temporaryRestoreDays;

  /// The Volume ID of which to make a snapshot.
  late final Output<String> volumeId;

  /// The size of the drive in GiBs.
  late final Output<int> volumeSize;

  Snapshot(
    String name, {
    SnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool>('encrypted');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerAlias = registerOutput<String>('ownerAlias');
    this.ownerId = registerOutput<String>('ownerId');
    this.permanentRestore = registerOutput<bool?>('permanentRestore');
    this.region = registerOutput<String>('region');
    this.storageTier = registerOutput<String>('storageTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    this.volumeId = registerOutput<String>('volumeId');
    this.volumeSize = registerOutput<int>('volumeSize');
  }
}
