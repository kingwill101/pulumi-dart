import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_volume_args.dart';
import 'open_zfs_volume_nfs_exports.dart';
import 'open_zfs_volume_origin_snapshot.dart';
import 'open_zfs_volume_state.dart';

/// Manages an Amazon FSx for OpenZFS volume.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OpenZfsVolume("test", {
///     name: "testvolume",
///     parentVolumeId: testAwsFsxOpenzfsFileSystem.rootVolumeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OpenZfsVolume("test",
///     name="testvolume",
///     parent_volume_id=test_aws_fsx_openzfs_file_system["rootVolumeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Fsx.OpenZfsVolume("test", new()
///     {
///         Name = "testvolume",
///         ParentVolumeId = testAwsFsxOpenzfsFileSystem.RootVolumeId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fsx.NewOpenZfsVolume(ctx, "test", &fsx.OpenZfsVolumeArgs{
/// 			Name:           pulumi.String("testvolume"),
/// 			ParentVolumeId: pulumi.Any(testAwsFsxOpenzfsFileSystem.RootVolumeId),
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
/// import com.pulumi.aws.fsx.OpenZfsVolume;
/// import com.pulumi.aws.fsx.OpenZfsVolumeArgs;
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
///         var test = new OpenZfsVolume("test", OpenZfsVolumeArgs.builder()
///             .name("testvolume")
///             .parentVolumeId(testAwsFsxOpenzfsFileSystem.rootVolumeId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OpenZfsVolume
///     properties:
///       name: testvolume
///       parentVolumeId: ${testAwsFsxOpenzfsFileSystem.rootVolumeId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Volumes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsVolume:OpenZfsVolume example fsvol-543ab12b1ca672f33
/// ```
class OpenZfsVolume extends pulumi.CustomResource {
  /// Amazon Resource Name of the file system.
  late final pulumi.Output<String> arn;

  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  late final pulumi.Output<bool?> copyTagsToSnapshots;

  /// Method used to compress the data on the volume. Valid values are `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  late final pulumi.Output<String?> dataCompressionType;

  /// Whether to delete all child volumes and snapshots. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`. This configuration must be applied separately before attempting to delete the resource to have the desired behavior..
  late final pulumi.Output<String?> deleteVolumeOptions;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  late final pulumi.Output<String> name;

  /// NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block Below for details.
  late final pulumi.Output<OpenZfsVolumeNfsExports?> nfsExports;

  /// Specifies the configuration to use when creating the OpenZFS volume. See `origin_snapshot` Block below for details.
  late final pulumi.Output<OpenZfsVolumeOriginSnapshot?> originSnapshot;

  /// The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the `aws.fsx.OpenZfsFileSystem` resource with the `root_volume_id` or the `id` property of another `aws.fsx.OpenZfsVolume`.
  late final pulumi.Output<String> parentVolumeId;

  /// specifies whether the volume is read-only. Default is false.
  late final pulumi.Output<bool> readOnly;

  /// The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  late final pulumi.Output<int?> recordSizeKib;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The maximum amount of storage in gibibytes (GiB) that the volume can use from its parent.
  late final pulumi.Output<int> storageCapacityQuotaGib;

  /// The amount of storage in gibibytes (GiB) to reserve from the parent volume.
  late final pulumi.Output<int> storageCapacityReservationGib;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specify how much storage users or groups can use on the volume. Maximum number of items defined by [FSx for OpenZFS Resource quota](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html#limits-openzfs-resources-file-system). See `user_and_group_quotas` Block Below.
  late final pulumi.Output<List<Map<String, dynamic>>> userAndGroupQuotas;
  late final pulumi.Output<String?> volumeType;

  /// Creates a new [OpenZfsVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenZfsVolume]. {@macro pulumi_fsx_open_zfs_volume_open_zfs_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenZfsVolume(
    String name, {
    OpenZfsVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:fsx/openZfsVolume:OpenZfsVolume',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    copyTagsToSnapshots = registerOutput<bool?>('copyTagsToSnapshots');
    dataCompressionType = registerOutput<String?>('dataCompressionType');
    deleteVolumeOptions = registerOutput<String?>('deleteVolumeOptions');
    this.name = registerOutput<String>('name');
    nfsExports = registerOutput<OpenZfsVolumeNfsExports?>(
      'nfsExports',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OpenZfsVolumeNfsExports.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    originSnapshot = registerOutput<OpenZfsVolumeOriginSnapshot?>(
      'originSnapshot',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OpenZfsVolumeOriginSnapshot.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    parentVolumeId = registerOutput<String>('parentVolumeId');
    readOnly = registerOutput<bool>('readOnly');
    recordSizeKib = registerOutput<int?>('recordSizeKib');
    region = registerOutput<String>('region');
    storageCapacityQuotaGib = registerOutput<int>('storageCapacityQuotaGib');
    storageCapacityReservationGib = registerOutput<int>(
      'storageCapacityReservationGib',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userAndGroupQuotas = registerOutput<List<Map<String, dynamic>>>(
      'userAndGroupQuotas',
    );
    volumeType = registerOutput<String?>('volumeType');
  }

  /// Gets an existing [OpenZfsVolume] resource's state with the given [name] and [id].
  static OpenZfsVolume get(
    String name,
    pulumi.Input<String> id, {
    OpenZfsVolumeState? state,
  }) {
    return OpenZfsVolume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OpenZfsVolume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:fsx/openZfsVolume:OpenZfsVolume',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    copyTagsToSnapshots = registerOutput<bool?>('copyTagsToSnapshots');
    dataCompressionType = registerOutput<String?>('dataCompressionType');
    deleteVolumeOptions = registerOutput<String?>('deleteVolumeOptions');
    this.name = registerOutput<String>('name');
    nfsExports = registerOutput<OpenZfsVolumeNfsExports?>(
      'nfsExports',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OpenZfsVolumeNfsExports.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    originSnapshot = registerOutput<OpenZfsVolumeOriginSnapshot?>(
      'originSnapshot',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OpenZfsVolumeOriginSnapshot.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    parentVolumeId = registerOutput<String>('parentVolumeId');
    readOnly = registerOutput<bool>('readOnly');
    recordSizeKib = registerOutput<int?>('recordSizeKib');
    region = registerOutput<String>('region');
    storageCapacityQuotaGib = registerOutput<int>('storageCapacityQuotaGib');
    storageCapacityReservationGib = registerOutput<int>(
      'storageCapacityReservationGib',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userAndGroupQuotas = registerOutput<List<Map<String, dynamic>>>(
      'userAndGroupQuotas',
    );
    volumeType = registerOutput<String?>('volumeType');
  }
}
