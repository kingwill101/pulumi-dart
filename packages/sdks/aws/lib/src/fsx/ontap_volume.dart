import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_volume_aggregate_configuration.dart';
import 'ontap_volume_args.dart';
import 'ontap_volume_snaplock_configuration.dart';
import 'ontap_volume_state.dart';
import 'ontap_volume_tiering_policy.dart';

/// Manages a FSx ONTAP Volume.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html) for more information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapVolume("test", {
///     name: "test",
///     junctionPath: "/test",
///     sizeInMegabytes: 1024,
///     storageEfficiencyEnabled: true,
///     storageVirtualMachineId: testAwsFsxOntapStorageVirtualMachine.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapVolume("test",
///     name="test",
///     junction_path="/test",
///     size_in_megabytes=1024,
///     storage_efficiency_enabled=True,
///     storage_virtual_machine_id=test_aws_fsx_ontap_storage_virtual_machine["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Fsx.OntapVolume("test", new()
///     {
///         Name = "test",
///         JunctionPath = "/test",
///         SizeInMegabytes = 1024,
///         StorageEfficiencyEnabled = true,
///         StorageVirtualMachineId = testAwsFsxOntapStorageVirtualMachine.Id,
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
/// 		_, err := fsx.NewOntapVolume(ctx, "test", &fsx.OntapVolumeArgs{
/// 			Name:                     pulumi.String("test"),
/// 			JunctionPath:             pulumi.String("/test"),
/// 			SizeInMegabytes:          pulumi.Int(1024),
/// 			StorageEfficiencyEnabled: pulumi.Bool(true),
/// 			StorageVirtualMachineId:  pulumi.Any(testAwsFsxOntapStorageVirtualMachine.Id),
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
/// import com.pulumi.aws.fsx.OntapVolume;
/// import com.pulumi.aws.fsx.OntapVolumeArgs;
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
///         var test = new OntapVolume("test", OntapVolumeArgs.builder()
///             .name("test")
///             .junctionPath("/test")
///             .sizeInMegabytes(1024)
///             .storageEfficiencyEnabled(true)
///             .storageVirtualMachineId(testAwsFsxOntapStorageVirtualMachine.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OntapVolume
///     properties:
///       name: test
///       junctionPath: /test
///       sizeInMegabytes: 1024
///       storageEfficiencyEnabled: true
///       storageVirtualMachineId: ${testAwsFsxOntapStorageVirtualMachine.id}
/// ```
///
///
/// ### Using Tiering Policy
///
/// Additional information on tiering policy with ONTAP Volumes can be found in the [FSx ONTAP Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapVolume("test", {
///     name: "test",
///     junctionPath: "/test",
///     sizeInMegabytes: 1024,
///     storageEfficiencyEnabled: true,
///     storageVirtualMachineId: testAwsFsxOntapStorageVirtualMachine.id,
///     tieringPolicy: {
///         name: "AUTO",
///         coolingPeriod: 31,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapVolume("test",
///     name="test",
///     junction_path="/test",
///     size_in_megabytes=1024,
///     storage_efficiency_enabled=True,
///     storage_virtual_machine_id=test_aws_fsx_ontap_storage_virtual_machine["id"],
///     tiering_policy={
///         "name": "AUTO",
///         "cooling_period": 31,
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
///     var test = new Aws.Fsx.OntapVolume("test", new()
///     {
///         Name = "test",
///         JunctionPath = "/test",
///         SizeInMegabytes = 1024,
///         StorageEfficiencyEnabled = true,
///         StorageVirtualMachineId = testAwsFsxOntapStorageVirtualMachine.Id,
///         TieringPolicy = new Aws.Fsx.Inputs.OntapVolumeTieringPolicyArgs
///         {
///             Name = "AUTO",
///             CoolingPeriod = 31,
///         },
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
/// 		_, err := fsx.NewOntapVolume(ctx, "test", &fsx.OntapVolumeArgs{
/// 			Name:                     pulumi.String("test"),
/// 			JunctionPath:             pulumi.String("/test"),
/// 			SizeInMegabytes:          pulumi.Int(1024),
/// 			StorageEfficiencyEnabled: pulumi.Bool(true),
/// 			StorageVirtualMachineId:  pulumi.Any(testAwsFsxOntapStorageVirtualMachine.Id),
/// 			TieringPolicy: &fsx.OntapVolumeTieringPolicyArgs{
/// 				Name:          pulumi.String("AUTO"),
/// 				CoolingPeriod: pulumi.Int(31),
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
/// import com.pulumi.aws.fsx.OntapVolume;
/// import com.pulumi.aws.fsx.OntapVolumeArgs;
/// import com.pulumi.aws.fsx.inputs.OntapVolumeTieringPolicyArgs;
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
///         var test = new OntapVolume("test", OntapVolumeArgs.builder()
///             .name("test")
///             .junctionPath("/test")
///             .sizeInMegabytes(1024)
///             .storageEfficiencyEnabled(true)
///             .storageVirtualMachineId(testAwsFsxOntapStorageVirtualMachine.id())
///             .tieringPolicy(OntapVolumeTieringPolicyArgs.builder()
///                 .name("AUTO")
///                 .coolingPeriod(31)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:fsx:OntapVolume
///     properties:
///       name: test
///       junctionPath: /test
///       sizeInMegabytes: 1024
///       storageEfficiencyEnabled: true
///       storageVirtualMachineId: ${testAwsFsxOntapStorageVirtualMachine.id}
///       tieringPolicy:
///         name: AUTO
///         coolingPeriod: 31
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx ONTAP volume using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapVolume:OntapVolume example fsvol-12345678abcdef123
/// ```
class OntapVolume extends pulumi.CustomResource {
  /// The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  late final pulumi.Output<OntapVolumeAggregateConfiguration?> aggregateConfiguration;
  /// Amazon Resource Name of the volune.
  late final pulumi.Output<String> arn;
  /// Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> bypassSnaplockEnterpriseRetention;
  /// A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  late final pulumi.Output<bool?> copyTagsToBackups;
  /// Describes the file system for the volume, e.g. `fs-12345679`
  late final pulumi.Output<String> fileSystemId;
  /// A map of tags to apply to the volume's final backup.
  late final pulumi.Output<Map<String, String>?> finalBackupTags;
  /// Specifies the FlexCache endpoint type of the volume, Valid values are `NONE`, `ORIGIN`, `CACHE`. Default value is `NONE`. These can be set by the ONTAP CLI or API and are use with FlexCache feature.
  late final pulumi.Output<String> flexcacheEndpointType;
  /// Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as `/vol3`
  late final pulumi.Output<String?> junctionPath;
  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  late final pulumi.Output<String> name;
  /// Specifies the type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  late final pulumi.Output<String> ontapVolumeType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  late final pulumi.Output<String> securityStyle;
  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  late final pulumi.Output<String> sizeInBytes;
  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  late final pulumi.Output<int> sizeInMegabytes;
  /// When enabled, will skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> skipFinalBackup;
  /// The SnapLock configuration for an FSx for ONTAP volume. See `snaplock_configuration` Block for details.
  late final pulumi.Output<OntapVolumeSnaplockConfiguration?> snaplockConfiguration;
  /// Specifies the snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  late final pulumi.Output<String> snapshotPolicy;
  /// Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume.
  late final pulumi.Output<bool?> storageEfficiencyEnabled;
  /// Specifies the storage virtual machine in which to create the volume.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> storageVirtualMachineId;
  /// A map of tags to assign to the volume. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  late final pulumi.Output<OntapVolumeTieringPolicy?> tieringPolicy;
  /// The Volume's UUID (universally unique identifier).
  late final pulumi.Output<String> uuid;
  /// Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  late final pulumi.Output<String> volumeStyle;
  /// The type of volume, currently the only valid value is `ONTAP`.
  late final pulumi.Output<String?> volumeType;

  /// Creates a new [OntapVolume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OntapVolume]. {@macro pulumi_fsx_ontap_volume_ontap_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OntapVolume(
    String name, {
    OntapVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapVolume:OntapVolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregateConfiguration = registerOutput<OntapVolumeAggregateConfiguration?>('aggregateConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OntapVolumeAggregateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    bypassSnaplockEnterpriseRetention = registerOutput<bool?>('bypassSnaplockEnterpriseRetention');
    copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    fileSystemId = registerOutput<String>('fileSystemId');
    finalBackupTags = registerOutput<Map<String, String>?>('finalBackupTags');
    flexcacheEndpointType = registerOutput<String>('flexcacheEndpointType');
    junctionPath = registerOutput<String?>('junctionPath');
    this.name = registerOutput<String>('name');
    ontapVolumeType = registerOutput<String>('ontapVolumeType');
    region = registerOutput<String>('region');
    securityStyle = registerOutput<String>('securityStyle');
    sizeInBytes = registerOutput<String>('sizeInBytes');
    sizeInMegabytes = registerOutput<int>('sizeInMegabytes');
    skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    snaplockConfiguration = registerOutput<OntapVolumeSnaplockConfiguration?>('snaplockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OntapVolumeSnaplockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snapshotPolicy = registerOutput<String>('snapshotPolicy');
    storageEfficiencyEnabled = registerOutput<bool?>('storageEfficiencyEnabled');
    storageVirtualMachineId = registerOutput<String>('storageVirtualMachineId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tieringPolicy = registerOutput<OntapVolumeTieringPolicy?>('tieringPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OntapVolumeTieringPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    volumeStyle = registerOutput<String>('volumeStyle');
    volumeType = registerOutput<String?>('volumeType');
  }

  /// Gets an existing [OntapVolume] resource's state with the given [name] and [id].
  static OntapVolume get(
    String name,
    pulumi.Input<String> id, {
    OntapVolumeState? state,
  }) {
    return OntapVolume._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OntapVolume._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapVolume:OntapVolume',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregateConfiguration = registerOutput<OntapVolumeAggregateConfiguration?>('aggregateConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OntapVolumeAggregateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    arn = registerOutput<String>('arn');
    bypassSnaplockEnterpriseRetention = registerOutput<bool?>('bypassSnaplockEnterpriseRetention');
    copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    fileSystemId = registerOutput<String>('fileSystemId');
    finalBackupTags = registerOutput<Map<String, String>?>('finalBackupTags');
    flexcacheEndpointType = registerOutput<String>('flexcacheEndpointType');
    junctionPath = registerOutput<String?>('junctionPath');
    this.name = registerOutput<String>('name');
    ontapVolumeType = registerOutput<String>('ontapVolumeType');
    region = registerOutput<String>('region');
    securityStyle = registerOutput<String>('securityStyle');
    sizeInBytes = registerOutput<String>('sizeInBytes');
    sizeInMegabytes = registerOutput<int>('sizeInMegabytes');
    skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    snaplockConfiguration = registerOutput<OntapVolumeSnaplockConfiguration?>('snaplockConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OntapVolumeSnaplockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    snapshotPolicy = registerOutput<String>('snapshotPolicy');
    storageEfficiencyEnabled = registerOutput<bool?>('storageEfficiencyEnabled');
    storageVirtualMachineId = registerOutput<String>('storageVirtualMachineId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tieringPolicy = registerOutput<OntapVolumeTieringPolicy?>('tieringPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OntapVolumeTieringPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uuid = registerOutput<String>('uuid');
    volumeStyle = registerOutput<String>('volumeStyle');
    volumeType = registerOutput<String?>('volumeType');
  }
}
