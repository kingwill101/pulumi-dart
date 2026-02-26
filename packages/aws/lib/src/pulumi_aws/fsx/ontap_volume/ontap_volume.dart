import 'package:pulumi/pulumi.dart';
import '../ontap_volume_aggregate_configuration/ontap_volume_aggregate_configuration.dart';
import '../ontap_volume_snaplock_configuration/ontap_volume_snaplock_configuration.dart';
import '../ontap_volume_tiering_policy/ontap_volume_tiering_policy.dart';
import 'ontap_volume_args.dart';

/// Manages a FSx ONTAP Volume.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html) for more information.
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
/// const test = new aws.fsx.OntapVolume("test", {
/// name: "test",
/// junctionPath: "/test",
/// sizeInMegabytes: 1024,
/// storageEfficiencyEnabled: true,
/// storageVirtualMachineId: testAwsFsxOntapStorageVirtualMachine.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapVolume("test",
/// name="test",
/// junction_path="/test",
/// size_in_megabytes=1024,
/// storage_efficiency_enabled=True,
/// storage_virtual_machine_id=test_aws_fsx_ontap_storage_virtual_machine["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Fsx.OntapVolume("test", new()
/// {
/// Name = "test",
/// JunctionPath = "/test",
/// SizeInMegabytes = 1024,
/// StorageEfficiencyEnabled = true,
/// StorageVirtualMachineId = testAwsFsxOntapStorageVirtualMachine.Id,
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
/// _, err := fsx.NewOntapVolume(ctx, "test", &fsx.OntapVolumeArgs{
/// Name:                     pulumi.String("test"),
/// JunctionPath:             pulumi.String("/test"),
/// SizeInMegabytes:          pulumi.Int(1024),
/// StorageEfficiencyEnabled: pulumi.Bool(true),
/// StorageVirtualMachineId:  pulumi.Any(testAwsFsxOntapStorageVirtualMachine.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new OntapVolume("test", OntapVolumeArgs.builder()
/// .name("test")
/// .junctionPath("/test")
/// .sizeInMegabytes(1024)
/// .storageEfficiencyEnabled(true)
/// .storageVirtualMachineId(testAwsFsxOntapStorageVirtualMachine.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:fsx:OntapVolume
/// properties:
/// name: test
/// junctionPath: /test
/// sizeInMegabytes: 1024
/// storageEfficiencyEnabled: true
/// storageVirtualMachineId: ${testAwsFsxOntapStorageVirtualMachine.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Using Tiering Policy
///
/// Additional information on tiering policy with ONTAP Volumes can be found in the [FSx ONTAP Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.fsx.OntapVolume("test", {
/// name: "test",
/// junctionPath: "/test",
/// sizeInMegabytes: 1024,
/// storageEfficiencyEnabled: true,
/// storageVirtualMachineId: testAwsFsxOntapStorageVirtualMachine.id,
/// tieringPolicy: {
/// name: "AUTO",
/// coolingPeriod: 31,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.fsx.OntapVolume("test",
/// name="test",
/// junction_path="/test",
/// size_in_megabytes=1024,
/// storage_efficiency_enabled=True,
/// storage_virtual_machine_id=test_aws_fsx_ontap_storage_virtual_machine["id"],
/// tiering_policy={
/// "name": "AUTO",
/// "cooling_period": 31,
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
/// var test = new Aws.Fsx.OntapVolume("test", new()
/// {
/// Name = "test",
/// JunctionPath = "/test",
/// SizeInMegabytes = 1024,
/// StorageEfficiencyEnabled = true,
/// StorageVirtualMachineId = testAwsFsxOntapStorageVirtualMachine.Id,
/// TieringPolicy = new Aws.Fsx.Inputs.OntapVolumeTieringPolicyArgs
/// {
/// Name = "AUTO",
/// CoolingPeriod = 31,
/// },
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
/// _, err := fsx.NewOntapVolume(ctx, "test", &fsx.OntapVolumeArgs{
/// Name:                     pulumi.String("test"),
/// JunctionPath:             pulumi.String("/test"),
/// SizeInMegabytes:          pulumi.Int(1024),
/// StorageEfficiencyEnabled: pulumi.Bool(true),
/// StorageVirtualMachineId:  pulumi.Any(testAwsFsxOntapStorageVirtualMachine.Id),
/// TieringPolicy: &fsx.OntapVolumeTieringPolicyArgs{
/// Name:          pulumi.String("AUTO"),
/// CoolingPeriod: pulumi.Int(31),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new OntapVolume("test", OntapVolumeArgs.builder()
/// .name("test")
/// .junctionPath("/test")
/// .sizeInMegabytes(1024)
/// .storageEfficiencyEnabled(true)
/// .storageVirtualMachineId(testAwsFsxOntapStorageVirtualMachine.id())
/// .tieringPolicy(OntapVolumeTieringPolicyArgs.builder()
/// .name("AUTO")
/// .coolingPeriod(31)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:fsx:OntapVolume
/// properties:
/// name: test
/// junctionPath: /test
/// sizeInMegabytes: 1024
/// storageEfficiencyEnabled: true
/// storageVirtualMachineId: ${testAwsFsxOntapStorageVirtualMachine.id}
/// tieringPolicy:
/// name: AUTO
/// coolingPeriod: 31
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FSx ONTAP volume using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapVolume:OntapVolume example fsvol-12345678abcdef123
/// ```
class OntapVolume extends CustomResource {
  /// The Aggregate configuration only applies to `FLEXGROUP` volumes. See [<span pulumi-lang-nodejs="`aggregateConfiguration`" pulumi-lang-dotnet="`AggregateConfiguration`" pulumi-lang-go="`aggregateConfiguration`" pulumi-lang-python="`aggregate_configuration`" pulumi-lang-yaml="`aggregateConfiguration`" pulumi-lang-java="`aggregateConfiguration`">`aggregate_configuration`</span> Block] for details.
  late final Output<OntapVolumeAggregateConfiguration?> aggregateConfiguration;

  /// Amazon Resource Name of the volune.
  late final Output<String> arn;

  /// Setting this to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> bypassSnaplockEnterpriseRetention;

  /// A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> copyTagsToBackups;

  /// Describes the file system for the volume, e.g. `fs-12345679`
  late final Output<String> fileSystemId;

  /// A map of tags to apply to the volume's final backup.
  late final Output<Map<String, String>?> finalBackupTags;

  /// Specifies the FlexCache endpoint type of the volume, Valid values are `NONE`, `ORIGIN`, `CACHE`. Default value is `NONE`. These can be set by the ONTAP CLI or API and are use with FlexCache feature.
  late final Output<String> flexcacheEndpointType;

  /// Specifies the location in the storage virtual machine's namespace where the volume is mounted. The<span pulumi-lang-nodejs=" junctionPath " pulumi-lang-dotnet=" JunctionPath " pulumi-lang-go=" junctionPath " pulumi-lang-python=" junction_path " pulumi-lang-yaml=" junctionPath " pulumi-lang-java=" junctionPath "> junction_path </span>must have a leading forward slash, such as `/vol3`
  late final Output<String?> junctionPath;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  late final Output<String> name;

  /// Specifies the type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  late final Output<String> ontapVolumeType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  late final Output<String> securityStyle;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either<span pulumi-lang-nodejs=" sizeInBytes " pulumi-lang-dotnet=" SizeInBytes " pulumi-lang-go=" sizeInBytes " pulumi-lang-python=" size_in_bytes " pulumi-lang-yaml=" sizeInBytes " pulumi-lang-java=" sizeInBytes "> size_in_bytes </span>or<span pulumi-lang-nodejs=" sizeInMegabytes " pulumi-lang-dotnet=" SizeInMegabytes " pulumi-lang-go=" sizeInMegabytes " pulumi-lang-python=" size_in_megabytes " pulumi-lang-yaml=" sizeInMegabytes " pulumi-lang-java=" sizeInMegabytes "> size_in_megabytes </span>must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  late final Output<String> sizeInBytes;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either<span pulumi-lang-nodejs=" sizeInBytes " pulumi-lang-dotnet=" SizeInBytes " pulumi-lang-go=" sizeInBytes " pulumi-lang-python=" size_in_bytes " pulumi-lang-yaml=" sizeInBytes " pulumi-lang-java=" sizeInBytes "> size_in_bytes </span>or<span pulumi-lang-nodejs=" sizeInMegabytes " pulumi-lang-dotnet=" SizeInMegabytes " pulumi-lang-go=" sizeInMegabytes " pulumi-lang-python=" size_in_megabytes " pulumi-lang-yaml=" sizeInMegabytes " pulumi-lang-java=" sizeInMegabytes "> size_in_megabytes </span>must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  late final Output<int> sizeInMegabytes;

  /// When enabled, will skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> skipFinalBackup;

  /// The SnapLock configuration for an FSx for ONTAP volume. See <span pulumi-lang-nodejs="`snaplockConfiguration`" pulumi-lang-dotnet="`SnaplockConfiguration`" pulumi-lang-go="`snaplockConfiguration`" pulumi-lang-python="`snaplock_configuration`" pulumi-lang-yaml="`snaplockConfiguration`" pulumi-lang-java="`snaplockConfiguration`">`snaplock_configuration`</span> Block for details.
  late final Output<OntapVolumeSnaplockConfiguration?> snaplockConfiguration;

  /// Specifies the snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  late final Output<String> snapshotPolicy;

  /// Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume.
  late final Output<bool?> storageEfficiencyEnabled;

  /// Specifies the storage virtual machine in which to create the volume.
  ///
  /// The following arguments are optional:
  late final Output<String> storageVirtualMachineId;

  /// A map of tags to assign to the volume. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The data tiering policy for an FSx for ONTAP volume. See <span pulumi-lang-nodejs="`tieringPolicy`" pulumi-lang-dotnet="`TieringPolicy`" pulumi-lang-go="`tieringPolicy`" pulumi-lang-python="`tiering_policy`" pulumi-lang-yaml="`tieringPolicy`" pulumi-lang-java="`tieringPolicy`">`tiering_policy`</span> Block for details.
  late final Output<OntapVolumeTieringPolicy?> tieringPolicy;

  /// The Volume's UUID (universally unique identifier).
  late final Output<String> uuid;

  /// Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  late final Output<String> volumeStyle;

  /// The type of volume, currently the only valid value is `ONTAP`.
  late final Output<String?> volumeType;

  OntapVolume(
    String name, {
    OntapVolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapVolume:OntapVolume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aggregateConfiguration =
        Output.createUnknown<OntapVolumeAggregateConfiguration?>();
    this.arn = Output.createUnknown<String>();
    this.bypassSnaplockEnterpriseRetention = Output.createUnknown<bool?>();
    this.copyTagsToBackups = Output.createUnknown<bool?>();
    this.fileSystemId = Output.createUnknown<String>();
    this.finalBackupTags = Output.createUnknown<Map<String, String>?>();
    this.flexcacheEndpointType = Output.createUnknown<String>();
    this.junctionPath = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.ontapVolumeType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.securityStyle = Output.createUnknown<String>();
    this.sizeInBytes = Output.createUnknown<String>();
    this.sizeInMegabytes = Output.createUnknown<int>();
    this.skipFinalBackup = Output.createUnknown<bool?>();
    this.snaplockConfiguration =
        Output.createUnknown<OntapVolumeSnaplockConfiguration?>();
    this.snapshotPolicy = Output.createUnknown<String>();
    this.storageEfficiencyEnabled = Output.createUnknown<bool?>();
    this.storageVirtualMachineId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tieringPolicy = Output.createUnknown<OntapVolumeTieringPolicy?>();
    this.uuid = Output.createUnknown<String>();
    this.volumeStyle = Output.createUnknown<String>();
    this.volumeType = Output.createUnknown<String?>();
  }
}
