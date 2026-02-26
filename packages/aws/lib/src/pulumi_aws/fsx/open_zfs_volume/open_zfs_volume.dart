import 'package:pulumi/pulumi.dart';
import '../open_zfs_volume_nfs_exports/open_zfs_volume_nfs_exports.dart';
import '../open_zfs_volume_origin_snapshot/open_zfs_volume_origin_snapshot.dart';
import '../open_zfs_volume_user_and_group_quota/open_zfs_volume_user_and_group_quota.dart';
import 'open_zfs_volume_args.dart';

/// Manages an Amazon FSx for OpenZFS volume.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OpenZfsVolume("test", {
/// name: "testvolume",
/// parentVolumeId: testAwsFsxOpenzfsFileSystem.rootVolumeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OpenZfsVolume("test",
/// name="testvolume",
/// parent_volume_id=test_aws_fsx_openzfs_file_system["rootVolumeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Fsx.OpenZfsVolume("test", new()
/// {
/// Name = "testvolume",
/// ParentVolumeId = testAwsFsxOpenzfsFileSystem.RootVolumeId,
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
/// _, err := fsx.NewOpenZfsVolume(ctx, "test", &fsx.OpenZfsVolumeArgs{
/// Name:           pulumi.String("testvolume"),
/// ParentVolumeId: pulumi.Any(testAwsFsxOpenzfsFileSystem.RootVolumeId),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new OpenZfsVolume("test", OpenZfsVolumeArgs.builder()
/// .name("testvolume")
/// .parentVolumeId(testAwsFsxOpenzfsFileSystem.rootVolumeId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:fsx:OpenZfsVolume
/// properties:
/// name: testvolume
/// parentVolumeId: ${testAwsFsxOpenzfsFileSystem.rootVolumeId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FSx Volumes using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsVolume:OpenZfsVolume example fsvol-543ab12b1ca672f33
/// ```
class OpenZfsVolume extends CustomResource {
  /// Amazon Resource Name of the file system.
  late final Output<String> arn;

  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  late final Output<bool?> copyTagsToSnapshots;

  /// Method used to compress the data on the volume. Valid values are `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  late final Output<String?> dataCompressionType;

  /// Whether to delete all child volumes and snapshots. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`. This configuration must be applied separately before attempting to delete the resource to have the desired behavior..
  late final Output<String?> deleteVolumeOptions;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  late final Output<String> name;

  /// NFS export configuration for the root volume. Exactly 1 item. See <span pulumi-lang-nodejs="`nfsExports`" pulumi-lang-dotnet="`NfsExports`" pulumi-lang-go="`nfsExports`" pulumi-lang-python="`nfs_exports`" pulumi-lang-yaml="`nfsExports`" pulumi-lang-java="`nfsExports`">`nfs_exports`</span> Block Below for details.
  late final Output<OpenZfsVolumeNfsExports?> nfsExports;

  /// Specifies the configuration to use when creating the OpenZFS volume. See <span pulumi-lang-nodejs="`originSnapshot`" pulumi-lang-dotnet="`OriginSnapshot`" pulumi-lang-go="`originSnapshot`" pulumi-lang-python="`origin_snapshot`" pulumi-lang-yaml="`originSnapshot`" pulumi-lang-java="`originSnapshot`">`origin_snapshot`</span> Block below for details.
  late final Output<OpenZfsVolumeOriginSnapshot?> originSnapshot;

  /// The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the <span pulumi-lang-nodejs="`aws.fsx.OpenZfsFileSystem`" pulumi-lang-dotnet="`aws.fsx.OpenZfsFileSystem`" pulumi-lang-go="`fsx.OpenZfsFileSystem`" pulumi-lang-python="`fsx.OpenZfsFileSystem`" pulumi-lang-yaml="`aws.fsx.OpenZfsFileSystem`" pulumi-lang-java="`aws.fsx.OpenZfsFileSystem`">`aws.fsx.OpenZfsFileSystem`</span> resource with the <span pulumi-lang-nodejs="`rootVolumeId`" pulumi-lang-dotnet="`RootVolumeId`" pulumi-lang-go="`rootVolumeId`" pulumi-lang-python="`root_volume_id`" pulumi-lang-yaml="`rootVolumeId`" pulumi-lang-java="`rootVolumeId`">`root_volume_id`</span> or the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> property of another <span pulumi-lang-nodejs="`aws.fsx.OpenZfsVolume`" pulumi-lang-dotnet="`aws.fsx.OpenZfsVolume`" pulumi-lang-go="`fsx.OpenZfsVolume`" pulumi-lang-python="`fsx.OpenZfsVolume`" pulumi-lang-yaml="`aws.fsx.OpenZfsVolume`" pulumi-lang-java="`aws.fsx.OpenZfsVolume`">`aws.fsx.OpenZfsVolume`</span>.
  late final Output<String> parentVolumeId;

  /// specifies whether the volume is read-only. Default is false.
  late final Output<bool> readOnly;

  /// The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, or <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> KiB. The default is <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span> KiB.
  late final Output<int?> recordSizeKib;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The maximum amount of storage in gibibytes (GiB) that the volume can use from its parent.
  late final Output<int> storageCapacityQuotaGib;

  /// The amount of storage in gibibytes (GiB) to reserve from the parent volume.
  late final Output<int> storageCapacityReservationGib;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specify how much storage users or groups can use on the volume. Maximum number of items defined by [FSx for OpenZFS Resource quota](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html#limits-openzfs-resources-file-system). See <span pulumi-lang-nodejs="`userAndGroupQuotas`" pulumi-lang-dotnet="`UserAndGroupQuotas`" pulumi-lang-go="`userAndGroupQuotas`" pulumi-lang-python="`user_and_group_quotas`" pulumi-lang-yaml="`userAndGroupQuotas`" pulumi-lang-java="`userAndGroupQuotas`">`user_and_group_quotas`</span> Block Below.
  late final Output<List<OpenZfsVolumeUserAndGroupQuota>> userAndGroupQuotas;
  late final Output<String?> volumeType;

  OpenZfsVolume(
    String name, {
    OpenZfsVolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsVolume:OpenZfsVolume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.copyTagsToSnapshots = Output.createUnknown<bool?>();
    this.dataCompressionType = Output.createUnknown<String?>();
    this.deleteVolumeOptions = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.nfsExports = Output.createUnknown<OpenZfsVolumeNfsExports?>();
    this.originSnapshot = Output.createUnknown<OpenZfsVolumeOriginSnapshot?>();
    this.parentVolumeId = Output.createUnknown<String>();
    this.readOnly = Output.createUnknown<bool>();
    this.recordSizeKib = Output.createUnknown<int?>();
    this.region = Output.createUnknown<String>();
    this.storageCapacityQuotaGib = Output.createUnknown<int>();
    this.storageCapacityReservationGib = Output.createUnknown<int>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userAndGroupQuotas =
        Output.createUnknown<List<OpenZfsVolumeUserAndGroupQuota>>();
    this.volumeType = Output.createUnknown<String?>();
  }
}
