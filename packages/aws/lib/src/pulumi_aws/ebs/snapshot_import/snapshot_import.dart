import 'package:pulumi/pulumi.dart';
import '../snapshot_import_client_data/snapshot_import_client_data.dart';
import '../snapshot_import_disk_container/snapshot_import_disk_container.dart';
import 'snapshot_import_args.dart';

/// Imports a disk image from S3 as a Snapshot.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.SnapshotImport("example", {
/// diskContainer: {
/// format: "VHD",
/// userBucket: {
/// s3Bucket: "disk-images",
/// s3Key: "source.vhd",
/// },
/// },
/// roleName: "disk-image-import",
/// tags: {
/// Name: "HelloWorld",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.SnapshotImport("example",
/// disk_container={
/// "format": "VHD",
/// "user_bucket": {
/// "s3_bucket": "disk-images",
/// "s3_key": "source.vhd",
/// },
/// },
/// role_name="disk-image-import",
/// tags={
/// "Name": "HelloWorld",
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
/// var example = new Aws.Ebs.SnapshotImport("example", new()
/// {
/// DiskContainer = new Aws.Ebs.Inputs.SnapshotImportDiskContainerArgs
/// {
/// Format = "VHD",
/// UserBucket = new Aws.Ebs.Inputs.SnapshotImportDiskContainerUserBucketArgs
/// {
/// S3Bucket = "disk-images",
/// S3Key = "source.vhd",
/// },
/// },
/// RoleName = "disk-image-import",
/// Tags =
/// {
/// { "Name", "HelloWorld" },
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
/// _, err := ebs.NewSnapshotImport(ctx, "example", &ebs.SnapshotImportArgs{
/// DiskContainer: &ebs.SnapshotImportDiskContainerArgs{
/// Format: pulumi.String("VHD"),
/// UserBucket: &ebs.SnapshotImportDiskContainerUserBucketArgs{
/// S3Bucket: pulumi.String("disk-images"),
/// S3Key:    pulumi.String("source.vhd"),
/// },
/// },
/// RoleName: pulumi.String("disk-image-import"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("HelloWorld"),
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
/// import com.pulumi.aws.ebs.SnapshotImport;
/// import com.pulumi.aws.ebs.SnapshotImportArgs;
/// import com.pulumi.aws.ebs.inputs.SnapshotImportDiskContainerArgs;
/// import com.pulumi.aws.ebs.inputs.SnapshotImportDiskContainerUserBucketArgs;
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
/// var example = new SnapshotImport("example", SnapshotImportArgs.builder()
/// .diskContainer(SnapshotImportDiskContainerArgs.builder()
/// .format("VHD")
/// .userBucket(SnapshotImportDiskContainerUserBucketArgs.builder()
/// .s3Bucket("disk-images")
/// .s3Key("source.vhd")
/// .build())
/// .build())
/// .roleName("disk-image-import")
/// .tags(Map.of("Name", "HelloWorld"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ebs:SnapshotImport
/// properties:
/// diskContainer:
/// format: VHD
/// userBucket:
/// s3Bucket: disk-images
/// s3Key: source.vhd
/// roleName: disk-image-import
/// tags:
/// Name: HelloWorld
/// ```
/// <!--End PulumiCodeChooser -->
class SnapshotImport extends CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final Output<String> arn;

  /// The client-specific data. Detailed below.
  late final Output<SnapshotImportClientData?> clientData;

  /// The data encryption key identifier for the snapshot.
  late final Output<String> dataEncryptionKeyId;

  /// The description string for the import snapshot task.
  late final Output<String> description;

  /// Information about the disk container. Detailed below.
  late final Output<SnapshotImportDiskContainer> diskContainer;

  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  late final Output<bool?> encrypted;

  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  late final Output<String?> kmsKeyId;
  late final Output<String> outpostArn;

  /// Value from an Amazon-maintained list (<span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>, `aws-marketplace`, <span pulumi-lang-nodejs="`microsoft`" pulumi-lang-dotnet="`Microsoft`" pulumi-lang-go="`microsoft`" pulumi-lang-python="`microsoft`" pulumi-lang-yaml="`microsoft`" pulumi-lang-java="`microsoft`">`microsoft`</span>) of snapshot owners.
  late final Output<String> ownerAlias;

  /// The AWS account ID of the EBS snapshot owner.
  late final Output<String> ownerId;

  /// Indicates whether to permanently restore an archived snapshot.
  late final Output<bool?> permanentRestore;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: <span pulumi-lang-nodejs="`vmimport`" pulumi-lang-dotnet="`Vmimport`" pulumi-lang-go="`vmimport`" pulumi-lang-python="`vmimport`" pulumi-lang-yaml="`vmimport`" pulumi-lang-java="`vmimport`">`vmimport`</span>
  late final Output<String?> roleName;

  /// The name of the storage tier. Valid values are <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span> and <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. Default value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>.
  late final Output<String> storageTier;

  /// A map of tags to assign to the snapshot.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final Output<int?> temporaryRestoreDays;
  late final Output<String> volumeId;

  /// The size of the drive in GiBs.
  late final Output<int> volumeSize;

  SnapshotImport(
    String name, {
    SnapshotImportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotImport:SnapshotImport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.clientData = Output.createUnknown<SnapshotImportClientData?>();
    this.dataEncryptionKeyId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.diskContainer = Output.createUnknown<SnapshotImportDiskContainer>();
    this.encrypted = Output.createUnknown<bool?>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.outpostArn = Output.createUnknown<String>();
    this.ownerAlias = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.permanentRestore = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.roleName = Output.createUnknown<String?>();
    this.storageTier = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.temporaryRestoreDays = Output.createUnknown<int?>();
    this.volumeId = Output.createUnknown<String>();
    this.volumeSize = Output.createUnknown<int>();
  }
}
