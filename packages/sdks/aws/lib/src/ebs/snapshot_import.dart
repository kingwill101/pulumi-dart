import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_import_args.dart';
import 'snapshot_import_client_data.dart';
import 'snapshot_import_disk_container.dart';
import 'snapshot_import_state.dart';

/// Imports a disk image from S3 as a Snapshot.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.SnapshotImport("example", {
///     diskContainer: {
///         format: "VHD",
///         userBucket: {
///             s3Bucket: "disk-images",
///             s3Key: "source.vhd",
///         },
///     },
///     roleName: "disk-image-import",
///     tags: {
///         Name: "HelloWorld",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.SnapshotImport("example",
///     disk_container={
///         "format": "VHD",
///         "user_bucket": {
///             "s3_bucket": "disk-images",
///             "s3_key": "source.vhd",
///         },
///     },
///     role_name="disk-image-import",
///     tags={
///         "Name": "HelloWorld",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ebs.SnapshotImport("example", new()
///     {
///         DiskContainer = new Aws.Ebs.Inputs.SnapshotImportDiskContainerArgs
///         {
///             Format = "VHD",
///             UserBucket = new Aws.Ebs.Inputs.SnapshotImportDiskContainerUserBucketArgs
///             {
///                 S3Bucket = "disk-images",
///                 S3Key = "source.vhd",
///             },
///         },
///         RoleName = "disk-image-import",
///         Tags =
///         {
///             { "Name", "HelloWorld" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.NewSnapshotImport(ctx, "example", &ebs.SnapshotImportArgs{
/// 			DiskContainer: &ebs.SnapshotImportDiskContainerArgs{
/// 				Format: pulumi.String("VHD"),
/// 				UserBucket: &ebs.SnapshotImportDiskContainerUserBucketArgs{
/// 					S3Bucket: pulumi.String("disk-images"),
/// 					S3Key:    pulumi.String("source.vhd"),
/// 				},
/// 			},
/// 			RoleName: pulumi.String("disk-image-import"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("HelloWorld"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new SnapshotImport("example", SnapshotImportArgs.builder()
///             .diskContainer(SnapshotImportDiskContainerArgs.builder()
///                 .format("VHD")
///                 .userBucket(SnapshotImportDiskContainerUserBucketArgs.builder()
///                     .s3Bucket("disk-images")
///                     .s3Key("source.vhd")
///                     .build())
///                 .build())
///             .roleName("disk-image-import")
///             .tags(Map.of("Name", "HelloWorld"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:SnapshotImport
///     properties:
///       diskContainer:
///         format: VHD
///         userBucket:
///           s3Bucket: disk-images
///           s3Key: source.vhd
///       roleName: disk-image-import
///       tags:
///         Name: HelloWorld
/// ```
class SnapshotImport extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the EBS Snapshot.
  late final pulumi.Output<String> arn;
  /// The client-specific data. Detailed below.
  late final pulumi.Output<SnapshotImportClientData?> clientData;
  /// The data encryption key identifier for the snapshot.
  late final pulumi.Output<String> dataEncryptionKeyId;
  /// The description string for the import snapshot task.
  late final pulumi.Output<String> description;
  /// Information about the disk container. Detailed below.
  late final pulumi.Output<SnapshotImportDiskContainer> diskContainer;
  /// Specifies whether the destination snapshot of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using KmsKeyId.
  late final pulumi.Output<bool?> encrypted;
  /// An identifier for the symmetric KMS key to use when creating the encrypted snapshot. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a KmsKeyId is specified, the Encrypted flag must also be set.
  late final pulumi.Output<String?> kmsKeyId;
  late final pulumi.Output<String> outpostArn;
  /// Value from an Amazon-maintained list (`amazon`, `aws-marketplace`, `microsoft`) of snapshot owners.
  late final pulumi.Output<String> ownerAlias;
  /// The AWS account ID of the EBS snapshot owner.
  late final pulumi.Output<String> ownerId;
  /// Indicates whether to permanently restore an archived snapshot.
  late final pulumi.Output<bool?> permanentRestore;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the IAM Role the VM Import/Export service will assume. This role needs certain permissions. See https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#vmimport-role. Default: `vmimport`
  late final pulumi.Output<String?> roleName;
  /// The name of the storage tier. Valid values are `archive` and `standard`. Default value is `standard`.
  late final pulumi.Output<String> storageTier;
  /// A map of tags to assign to the snapshot.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only. The snapshot will be automatically re-archived after this period.
  late final pulumi.Output<int?> temporaryRestoreDays;
  late final pulumi.Output<String> volumeId;
  /// The size of the drive in GiBs.
  late final pulumi.Output<int> volumeSize;

  /// Creates a new [SnapshotImport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotImport]. {@macro pulumi_ebs_snapshot_import_snapshot_import_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotImport(
    String name, {
    SnapshotImportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotImport:SnapshotImport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientData = registerOutput<SnapshotImportClientData?>('clientData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotImportClientData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    description = registerOutput<String>('description');
    diskContainer = registerOutput<SnapshotImportDiskContainer>('diskContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotImportDiskContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encrypted = registerOutput<bool?>('encrypted');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    outpostArn = registerOutput<String>('outpostArn');
    ownerAlias = registerOutput<String>('ownerAlias');
    ownerId = registerOutput<String>('ownerId');
    permanentRestore = registerOutput<bool?>('permanentRestore');
    region = registerOutput<String>('region');
    roleName = registerOutput<String?>('roleName');
    storageTier = registerOutput<String>('storageTier');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    volumeId = registerOutput<String>('volumeId');
    volumeSize = registerOutput<int>('volumeSize');
  }

  /// Gets an existing [SnapshotImport] resource's state with the given [name] and [id].
  static SnapshotImport get(
    String name,
    pulumi.Input<String> id, {
    SnapshotImportState? state,
  }) {
    return SnapshotImport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnapshotImport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotImport:SnapshotImport',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientData = registerOutput<SnapshotImportClientData?>('clientData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotImportClientData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataEncryptionKeyId = registerOutput<String>('dataEncryptionKeyId');
    description = registerOutput<String>('description');
    diskContainer = registerOutput<SnapshotImportDiskContainer>('diskContainer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnapshotImportDiskContainer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    encrypted = registerOutput<bool?>('encrypted');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    outpostArn = registerOutput<String>('outpostArn');
    ownerAlias = registerOutput<String>('ownerAlias');
    ownerId = registerOutput<String>('ownerId');
    permanentRestore = registerOutput<bool?>('permanentRestore');
    region = registerOutput<String>('region');
    roleName = registerOutput<String?>('roleName');
    storageTier = registerOutput<String>('storageTier');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    temporaryRestoreDays = registerOutput<int?>('temporaryRestoreDays');
    volumeId = registerOutput<String>('volumeId');
    volumeSize = registerOutput<int>('volumeSize');
  }
}
