import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_job_args.dart';
import 'restore_job_ots_detail.dart';

/// Provides a Hybrid Backup Recovery (HBR) Restore Job resource.
///
/// For information about Hybrid Backup Recovery (HBR) Restore Job and how to use it, see [What is Restore Job](https://www.alibabacloud.com/help/doc-detail/186575.htm).
///
/// > **NOTE:** Available since v1.133.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.hbr.getEcsBackupPlans({
///     nameRegex: "plan-tf-used-dont-delete",
/// });
/// const defaultGetOssBackupPlans = alicloud.hbr.getOssBackupPlans({
///     nameRegex: "plan-tf-used-dont-delete",
/// });
/// const defaultGetNasBackupPlans = alicloud.hbr.getNasBackupPlans({
///     nameRegex: "plan-tf-used-dont-delete",
/// });
/// const ecsSnapshots = Promise.all([_default, _default]).then(([_default, _default1]) => alicloud.hbr.getSnapshots({
///     sourceType: "ECS_FILE",
///     vaultId: _default.plans?.[0]?.vaultId,
///     instanceId: _default1.plans?.[0]?.instanceId,
/// }));
/// const ossSnapshots = Promise.all([defaultGetOssBackupPlans, defaultGetOssBackupPlans]).then(([defaultGetOssBackupPlans, defaultGetOssBackupPlans1]) => alicloud.hbr.getSnapshots({
///     sourceType: "OSS",
///     vaultId: defaultGetOssBackupPlans.plans?.[0]?.vaultId,
///     bucket: defaultGetOssBackupPlans1.plans?.[0]?.bucket,
/// }));
/// const nasSnapshots = Promise.all([defaultGetNasBackupPlans, defaultGetNasBackupPlans, defaultGetNasBackupPlans]).then(([defaultGetNasBackupPlans, defaultGetNasBackupPlans1, defaultGetNasBackupPlans2]) => alicloud.hbr.getSnapshots({
///     sourceType: "NAS",
///     vaultId: defaultGetNasBackupPlans.plans?.[0]?.vaultId,
///     fileSystemId: defaultGetNasBackupPlans1.plans?.[0]?.fileSystemId,
///     createTime: defaultGetNasBackupPlans2.plans?.[0]?.createTime,
/// }));
/// const nasJob = new alicloud.hbr.RestoreJob("nasJob", {
///     snapshotHash: nasSnapshots.then(nasSnapshots => nasSnapshots.snapshots?.[0]?.snapshotHash),
///     vaultId: defaultGetNasBackupPlans.then(defaultGetNasBackupPlans => defaultGetNasBackupPlans.plans?.[0]?.vaultId),
///     sourceType: "NAS",
///     restoreType: "NAS",
///     snapshotId: nasSnapshots.then(nasSnapshots => nasSnapshots.snapshots?.[0]?.snapshotId),
///     targetFileSystemId: defaultGetNasBackupPlans.then(defaultGetNasBackupPlans => defaultGetNasBackupPlans.plans?.[0]?.fileSystemId),
///     targetCreateTime: defaultGetNasBackupPlans.then(defaultGetNasBackupPlans => defaultGetNasBackupPlans.plans?.[0]?.createTime),
///     targetPath: "/",
///     options: "    {\\\"includes\\\":[], \\\"excludes\\\":[]}\n",
/// });
/// const ossJob = new alicloud.hbr.RestoreJob("ossJob", {
///     snapshotHash: ossSnapshots.then(ossSnapshots => ossSnapshots.snapshots?.[0]?.snapshotHash),
///     vaultId: defaultGetOssBackupPlans.then(defaultGetOssBackupPlans => defaultGetOssBackupPlans.plans?.[0]?.vaultId),
///     sourceType: "OSS",
///     restoreType: "OSS",
///     snapshotId: ossSnapshots.then(ossSnapshots => ossSnapshots.snapshots?.[0]?.snapshotId),
///     targetBucket: defaultGetOssBackupPlans.then(defaultGetOssBackupPlans => defaultGetOssBackupPlans.plans?.[0]?.bucket),
///     targetPrefix: "",
///     options: "    {\\\"includes\\\":[], \\\"excludes\\\":[]}\n",
/// });
/// const ecsJob = new alicloud.hbr.RestoreJob("ecsJob", {
///     snapshotHash: ecsSnapshots.then(ecsSnapshots => ecsSnapshots.snapshots?.[0]?.snapshotHash),
///     vaultId: _default.then(_default => _default.plans?.[0]?.vaultId),
///     sourceType: "ECS_FILE",
///     restoreType: "ECS_FILE",
///     snapshotId: ecsSnapshots.then(ecsSnapshots => ecsSnapshots.snapshots?.[0]?.snapshotId),
///     targetInstanceId: _default.then(_default => _default.plans?.[0]?.instanceId),
///     targetPath: "/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.hbr.get_ecs_backup_plans(name_regex="plan-tf-used-dont-delete")
/// default_get_oss_backup_plans = alicloud.hbr.get_oss_backup_plans(name_regex="plan-tf-used-dont-delete")
/// default_get_nas_backup_plans = alicloud.hbr.get_nas_backup_plans(name_regex="plan-tf-used-dont-delete")
/// ecs_snapshots = alicloud.hbr.get_snapshots(source_type="ECS_FILE",
///     vault_id=default.plans[0].vault_id,
///     instance_id=default.plans[0].instance_id)
/// oss_snapshots = alicloud.hbr.get_snapshots(source_type="OSS",
///     vault_id=default_get_oss_backup_plans.plans[0].vault_id,
///     bucket=default_get_oss_backup_plans.plans[0].bucket)
/// nas_snapshots = alicloud.hbr.get_snapshots(source_type="NAS",
///     vault_id=default_get_nas_backup_plans.plans[0].vault_id,
///     file_system_id=default_get_nas_backup_plans.plans[0].file_system_id,
///     create_time=default_get_nas_backup_plans.plans[0].create_time)
/// nas_job = alicloud.hbr.RestoreJob("nasJob",
///     snapshot_hash=nas_snapshots.snapshots[0].snapshot_hash,
///     vault_id=default_get_nas_backup_plans.plans[0].vault_id,
///     source_type="NAS",
///     restore_type="NAS",
///     snapshot_id=nas_snapshots.snapshots[0].snapshot_id,
///     target_file_system_id=default_get_nas_backup_plans.plans[0].file_system_id,
///     target_create_time=default_get_nas_backup_plans.plans[0].create_time,
///     target_path="/",
///     options="    {\\\"includes\\\":[], \\\"excludes\\\":[]}\n")
/// oss_job = alicloud.hbr.RestoreJob("ossJob",
///     snapshot_hash=oss_snapshots.snapshots[0].snapshot_hash,
///     vault_id=default_get_oss_backup_plans.plans[0].vault_id,
///     source_type="OSS",
///     restore_type="OSS",
///     snapshot_id=oss_snapshots.snapshots[0].snapshot_id,
///     target_bucket=default_get_oss_backup_plans.plans[0].bucket,
///     target_prefix="",
///     options="    {\\\"includes\\\":[], \\\"excludes\\\":[]}\n")
/// ecs_job = alicloud.hbr.RestoreJob("ecsJob",
///     snapshot_hash=ecs_snapshots.snapshots[0].snapshot_hash,
///     vault_id=default.plans[0].vault_id,
///     source_type="ECS_FILE",
///     restore_type="ECS_FILE",
///     snapshot_id=ecs_snapshots.snapshots[0].snapshot_id,
///     target_instance_id=default.plans[0].instance_id,
///     target_path="/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Hbr.GetEcsBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-tf-used-dont-delete",
///     });
///
///     var defaultGetOssBackupPlans = AliCloud.Hbr.GetOssBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-tf-used-dont-delete",
///     });
///
///     var defaultGetNasBackupPlans = AliCloud.Hbr.GetNasBackupPlans.Invoke(new()
///     {
///         NameRegex = "plan-tf-used-dont-delete",
///     });
///
///     var ecsSnapshots = AliCloud.Hbr.GetSnapshots.Invoke(new()
///     {
///         SourceType = "ECS_FILE",
///         VaultId = @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.VaultId),
///         InstanceId = @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.InstanceId),
///     });
///
///     var ossSnapshots = AliCloud.Hbr.GetSnapshots.Invoke(new()
///     {
///         SourceType = "OSS",
///         VaultId = defaultGetOssBackupPlans.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.VaultId),
///         Bucket = defaultGetOssBackupPlans.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.Bucket),
///     });
///
///     var nasSnapshots = AliCloud.Hbr.GetSnapshots.Invoke(new()
///     {
///         SourceType = "NAS",
///         VaultId = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.VaultId),
///         FileSystemId = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.FileSystemId),
///         CreateTime = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.CreateTime),
///     });
///
///     var nasJob = new AliCloud.Hbr.RestoreJob("nasJob", new()
///     {
///         SnapshotHash = nasSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.SnapshotHash),
///         VaultId = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.VaultId),
///         SourceType = "NAS",
///         RestoreType = "NAS",
///         SnapshotId = nasSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.SnapshotId),
///         TargetFileSystemId = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.FileSystemId),
///         TargetCreateTime = defaultGetNasBackupPlans.Apply(getNasBackupPlansResult => getNasBackupPlansResult.Plans[0]?.CreateTime),
///         TargetPath = "/",
///         Options = @"    {\""includes\"":[], \""excludes\"":[]}
/// ",
///     });
///
///     var ossJob = new AliCloud.Hbr.RestoreJob("ossJob", new()
///     {
///         SnapshotHash = ossSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.SnapshotHash),
///         VaultId = defaultGetOssBackupPlans.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.VaultId),
///         SourceType = "OSS",
///         RestoreType = "OSS",
///         SnapshotId = ossSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.SnapshotId),
///         TargetBucket = defaultGetOssBackupPlans.Apply(getOssBackupPlansResult => getOssBackupPlansResult.Plans[0]?.Bucket),
///         TargetPrefix = "",
///         Options = @"    {\""includes\"":[], \""excludes\"":[]}
/// ",
///     });
///
///     var ecsJob = new AliCloud.Hbr.RestoreJob("ecsJob", new()
///     {
///         SnapshotHash = ecsSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.SnapshotHash),
///         VaultId = @default.Apply(@default => @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.VaultId)),
///         SourceType = "ECS_FILE",
///         RestoreType = "ECS_FILE",
///         SnapshotId = ecsSnapshots.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.SnapshotId),
///         TargetInstanceId = @default.Apply(@default => @default.Apply(getEcsBackupPlansResult => getEcsBackupPlansResult.Plans[0]?.InstanceId)),
///         TargetPath = "/",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := hbr.GetEcsBackupPlans(ctx, &hbr.GetEcsBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-tf-used-dont-delete"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetOssBackupPlans, err := hbr.GetOssBackupPlans(ctx, &hbr.GetOssBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-tf-used-dont-delete"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNasBackupPlans, err := hbr.GetNasBackupPlans(ctx, &hbr.GetNasBackupPlansArgs{
/// 			NameRegex: pulumi.StringRef("plan-tf-used-dont-delete"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ecsSnapshots, err := hbr.GetSnapshots(ctx, &hbr.GetSnapshotsArgs{
/// 			SourceType: "ECS_FILE",
/// 			VaultId:    _default.Plans[0].VaultId,
/// 			InstanceId: pulumi.StringRef(_default.Plans[0].InstanceId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ossSnapshots, err := hbr.GetSnapshots(ctx, &hbr.GetSnapshotsArgs{
/// 			SourceType: "OSS",
/// 			VaultId:    defaultGetOssBackupPlans.Plans[0].VaultId,
/// 			Bucket:     pulumi.StringRef(defaultGetOssBackupPlans.Plans[0].Bucket),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nasSnapshots, err := hbr.GetSnapshots(ctx, &hbr.GetSnapshotsArgs{
/// 			SourceType:   "NAS",
/// 			VaultId:      defaultGetNasBackupPlans.Plans[0].VaultId,
/// 			FileSystemId: pulumi.StringRef(defaultGetNasBackupPlans.Plans[0].FileSystemId),
/// 			CreateTime:   pulumi.StringRef(defaultGetNasBackupPlans.Plans[0].CreateTime),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewRestoreJob(ctx, "nasJob", &hbr.RestoreJobArgs{
/// 			SnapshotHash:       pulumi.String(nasSnapshots.Snapshots[0].SnapshotHash),
/// 			VaultId:            pulumi.String(defaultGetNasBackupPlans.Plans[0].VaultId),
/// 			SourceType:         pulumi.String("NAS"),
/// 			RestoreType:        pulumi.String("NAS"),
/// 			SnapshotId:         pulumi.String(nasSnapshots.Snapshots[0].SnapshotId),
/// 			TargetFileSystemId: pulumi.String(defaultGetNasBackupPlans.Plans[0].FileSystemId),
/// 			TargetCreateTime:   pulumi.String(defaultGetNasBackupPlans.Plans[0].CreateTime),
/// 			TargetPath:         pulumi.String("/"),
/// 			Options:            pulumi.String("    {\\\"includes\\\":[], \\\"excludes\\\":[]}\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewRestoreJob(ctx, "ossJob", &hbr.RestoreJobArgs{
/// 			SnapshotHash: pulumi.String(ossSnapshots.Snapshots[0].SnapshotHash),
/// 			VaultId:      pulumi.String(defaultGetOssBackupPlans.Plans[0].VaultId),
/// 			SourceType:   pulumi.String("OSS"),
/// 			RestoreType:  pulumi.String("OSS"),
/// 			SnapshotId:   pulumi.String(ossSnapshots.Snapshots[0].SnapshotId),
/// 			TargetBucket: pulumi.String(defaultGetOssBackupPlans.Plans[0].Bucket),
/// 			TargetPrefix: pulumi.String(""),
/// 			Options:      pulumi.String("    {\\\"includes\\\":[], \\\"excludes\\\":[]}\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewRestoreJob(ctx, "ecsJob", &hbr.RestoreJobArgs{
/// 			SnapshotHash:     pulumi.String(ecsSnapshots.Snapshots[0].SnapshotHash),
/// 			VaultId:          pulumi.String(_default.Plans[0].VaultId),
/// 			SourceType:       pulumi.String("ECS_FILE"),
/// 			RestoreType:      pulumi.String("ECS_FILE"),
/// 			SnapshotId:       pulumi.String(ecsSnapshots.Snapshots[0].SnapshotId),
/// 			TargetInstanceId: pulumi.String(_default.Plans[0].InstanceId),
/// 			TargetPath:       pulumi.String("/"),
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
/// import com.pulumi.alicloud.hbr.HbrFunctions;
/// import com.pulumi.alicloud.hbr.inputs.GetEcsBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetOssBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetNasBackupPlansArgs;
/// import com.pulumi.alicloud.hbr.inputs.GetSnapshotsArgs;
/// import com.pulumi.alicloud.hbr.RestoreJob;
/// import com.pulumi.alicloud.hbr.RestoreJobArgs;
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
///         final var default = HbrFunctions.getEcsBackupPlans(GetEcsBackupPlansArgs.builder()
///             .nameRegex("plan-tf-used-dont-delete")
///             .build());
///
///         final var defaultGetOssBackupPlans = HbrFunctions.getOssBackupPlans(GetOssBackupPlansArgs.builder()
///             .nameRegex("plan-tf-used-dont-delete")
///             .build());
///
///         final var defaultGetNasBackupPlans = HbrFunctions.getNasBackupPlans(GetNasBackupPlansArgs.builder()
///             .nameRegex("plan-tf-used-dont-delete")
///             .build());
///
///         final var ecsSnapshots = HbrFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .sourceType("ECS_FILE")
///             .vaultId(default_.plans()[0].vaultId())
///             .instanceId(default_.plans()[0].instanceId())
///             .build());
///
///         final var ossSnapshots = HbrFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .sourceType("OSS")
///             .vaultId(defaultGetOssBackupPlans.plans()[0].vaultId())
///             .bucket(defaultGetOssBackupPlans.plans()[0].bucket())
///             .build());
///
///         final var nasSnapshots = HbrFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .sourceType("NAS")
///             .vaultId(defaultGetNasBackupPlans.plans()[0].vaultId())
///             .fileSystemId(defaultGetNasBackupPlans.plans()[0].fileSystemId())
///             .createTime(defaultGetNasBackupPlans.plans()[0].createTime())
///             .build());
///
///         var nasJob = new RestoreJob("nasJob", RestoreJobArgs.builder()
///             .snapshotHash(nasSnapshots.snapshots()[0].snapshotHash())
///             .vaultId(defaultGetNasBackupPlans.plans()[0].vaultId())
///             .sourceType("NAS")
///             .restoreType("NAS")
///             .snapshotId(nasSnapshots.snapshots()[0].snapshotId())
///             .targetFileSystemId(defaultGetNasBackupPlans.plans()[0].fileSystemId())
///             .targetCreateTime(defaultGetNasBackupPlans.plans()[0].createTime())
///             .targetPath("/")
///             .options("""
///     {\"includes\":[], \"excludes\":[]}
///             """)
///             .build());
///
///         var ossJob = new RestoreJob("ossJob", RestoreJobArgs.builder()
///             .snapshotHash(ossSnapshots.snapshots()[0].snapshotHash())
///             .vaultId(defaultGetOssBackupPlans.plans()[0].vaultId())
///             .sourceType("OSS")
///             .restoreType("OSS")
///             .snapshotId(ossSnapshots.snapshots()[0].snapshotId())
///             .targetBucket(defaultGetOssBackupPlans.plans()[0].bucket())
///             .targetPrefix("")
///             .options("""
///     {\"includes\":[], \"excludes\":[]}
///             """)
///             .build());
///
///         var ecsJob = new RestoreJob("ecsJob", RestoreJobArgs.builder()
///             .snapshotHash(ecsSnapshots.snapshots()[0].snapshotHash())
///             .vaultId(default_.plans()[0].vaultId())
///             .sourceType("ECS_FILE")
///             .restoreType("ECS_FILE")
///             .snapshotId(ecsSnapshots.snapshots()[0].snapshotId())
///             .targetInstanceId(default_.plans()[0].instanceId())
///             .targetPath("/")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   nasJob:
///     type: alicloud:hbr:RestoreJob
///     properties:
///       snapshotHash: ${nasSnapshots.snapshots[0].snapshotHash}
///       vaultId: ${defaultGetNasBackupPlans.plans[0].vaultId}
///       sourceType: NAS
///       restoreType: NAS
///       snapshotId: ${nasSnapshots.snapshots[0].snapshotId}
///       targetFileSystemId: ${defaultGetNasBackupPlans.plans[0].fileSystemId}
///       targetCreateTime: ${defaultGetNasBackupPlans.plans[0].createTime}
///       targetPath: /
///       options: |2
///             {\"includes\":[], \"excludes\":[]}
///   ossJob:
///     type: alicloud:hbr:RestoreJob
///     properties:
///       snapshotHash: ${ossSnapshots.snapshots[0].snapshotHash}
///       vaultId: ${defaultGetOssBackupPlans.plans[0].vaultId}
///       sourceType: OSS
///       restoreType: OSS
///       snapshotId: ${ossSnapshots.snapshots[0].snapshotId}
///       targetBucket: ${defaultGetOssBackupPlans.plans[0].bucket}
///       targetPrefix: ""
///       options: |2
///             {\"includes\":[], \"excludes\":[]}
///   ecsJob:
///     type: alicloud:hbr:RestoreJob
///     properties:
///       snapshotHash: ${ecsSnapshots.snapshots[0].snapshotHash}
///       vaultId: ${default.plans[0].vaultId}
///       sourceType: ECS_FILE
///       restoreType: ECS_FILE
///       snapshotId: ${ecsSnapshots.snapshots[0].snapshotId}
///       targetInstanceId: ${default.plans[0].instanceId}
///       targetPath: /
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbr:getEcsBackupPlans
///       arguments:
///         nameRegex: plan-tf-used-dont-delete
///   defaultGetOssBackupPlans:
///     fn::invoke:
///       function: alicloud:hbr:getOssBackupPlans
///       arguments:
///         nameRegex: plan-tf-used-dont-delete
///   defaultGetNasBackupPlans:
///     fn::invoke:
///       function: alicloud:hbr:getNasBackupPlans
///       arguments:
///         nameRegex: plan-tf-used-dont-delete
///   ecsSnapshots:
///     fn::invoke:
///       function: alicloud:hbr:getSnapshots
///       arguments:
///         sourceType: ECS_FILE
///         vaultId: ${default.plans[0].vaultId}
///         instanceId: ${default.plans[0].instanceId}
///   ossSnapshots:
///     fn::invoke:
///       function: alicloud:hbr:getSnapshots
///       arguments:
///         sourceType: OSS
///         vaultId: ${defaultGetOssBackupPlans.plans[0].vaultId}
///         bucket: ${defaultGetOssBackupPlans.plans[0].bucket}
///   nasSnapshots:
///     fn::invoke:
///       function: alicloud:hbr:getSnapshots
///       arguments:
///         sourceType: NAS
///         vaultId: ${defaultGetNasBackupPlans.plans[0].vaultId}
///         fileSystemId: ${defaultGetNasBackupPlans.plans[0].fileSystemId}
///         createTime: ${defaultGetNasBackupPlans.plans[0].createTime}
/// ```
///
///
/// > **NOTE:** This resource can only be created, cannot be modified or deleted. Therefore, any modification of the resource attribute will not affect exist resource.
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Restore Job can be imported using the id. Format to `<restore_job_id>:<restore_type>`, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/restoreJob:RestoreJob example your_restore_job_id:your_restore_type
/// ```
class RestoreJob extends pulumi.CustomResource {
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  late final pulumi.Output<String?> crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  late final pulumi.Output<String> crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  late final pulumi.Output<int?> crossAccountUserId;
  /// The exclude path. **NOTE:** Invalid while source_type equals `OSS` or `NAS`. It's a json string with format:`["/excludePath]`, up to 255 characters. **WARNING:** If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  late final pulumi.Output<String?> exclude;
  /// The include path. **NOTE:** Invalid while source_type equals `OSS` or `NAS`. It's a json string with format:`["/includePath"]`, Up to 255 characters. **WARNING:** The field is required while source_type equals `OTS_TABLE` which means source table name. If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  late final pulumi.Output<String?> include;
  /// Recovery options. **NOTE:** Required while source_type equals `OSS` or `NAS`, invalid while source_type equals `ECS_FILE`. It's a json string with format:`"{"includes":[],"excludes":[]}",`. Recovery options. When restores OTS_TABLE and real target time is the rangEnd time of the snapshot, it should be a string with format: `{"UI_TargetTime":1650032529018}`.
  late final pulumi.Output<String?> options;
  /// The details about the Tablestore instance. See the following `Block ots_detail`.
  late final pulumi.Output<RestoreJobOtsDetail> otsDetail;
  /// Restore Job ID. It's the unique key of this resource, if you want to set this argument by yourself, you must specify a unique keyword that never appears.
  late final pulumi.Output<String> restoreJobId;
  /// The type of recovery destination. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS_ROLLBACK`. **Note**: Currently, there is a one-to-one correspondence between the data source type with the recovery destination type.
  late final pulumi.Output<String> restoreType;
  /// The hashcode of Snapshot.
  late final pulumi.Output<String> snapshotHash;
  /// The ID of Snapshot.
  late final pulumi.Output<String> snapshotId;
  /// The type of data source. Valid values: `ECS_FILE`, `NAS`, `OSS`,`OTS_TABLE`,`UDM_ECS`.
  late final pulumi.Output<String> sourceType;
  /// The Restore Job Status.
  late final pulumi.Output<String> status;
  /// The target name of OSS bucket. **NOTE:** Required while source_type equals `OSS`,
  late final pulumi.Output<String?> targetBucket;
  /// The target client ID.
  late final pulumi.Output<String?> targetClientId;
  /// The creation time of destination File System. **NOTE:** While source_type equals `NAS`, this parameter must be set. **Note:** The time format of the API adopts the ISO 8601 format, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  late final pulumi.Output<String?> targetCreateTime;
  /// The target data source ID.
  late final pulumi.Output<String?> targetDataSourceId;
  /// The ID of destination File System. **NOTE:** Required while source_type equals `NAS`
  late final pulumi.Output<String?> targetFileSystemId;
  /// The target ID of ECS instance. **NOTE:** Required while source_type equals `ECS_FILE`
  late final pulumi.Output<String?> targetInstanceId;
  /// The name of the Table store instance to which you want to restore data.**WARNING:** Required while source_type equals `OTS_TABLE`.
  late final pulumi.Output<String?> targetInstanceName;
  /// The target file path of (ECS) instance. **WARNING:** Required while source_type equals `NAS` or `ECS_FILE`, If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  late final pulumi.Output<String?> targetPath;
  /// The target prefix of the OSS object. **WARNING:** Required while source_type equals `OSS`. If this value filled in incorrectly, the task may not start correctly, so please check the parameters before executing the plan.
  late final pulumi.Output<String?> targetPrefix;
  /// The name of the table that stores the restored data. **WARNING:** Required while source_type equals `OTS_TABLE`.
  late final pulumi.Output<String?> targetTableName;
  /// The time when data is restored to the Table store instance. This value is a UNIX timestamp. Unit: seconds. **WARNING:** Required while source_type equals `OTS_TABLE`. **Note:** The time when data is restored to the Tablestore instance. It should be 0 if restores data at the End time of the snapshot.
  late final pulumi.Output<String?> targetTime;
  /// The full machine backup details.
  late final pulumi.Output<String?> udmDetail;
  /// The ID of backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [RestoreJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestoreJob]. {@macro pulumi_hbr_restore_job_restore_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestoreJob(
    String name, {
    RestoreJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/restoreJob:RestoreJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.exclude = registerOutput<String?>('exclude');
    this.include = registerOutput<String?>('include');
    this.options = registerOutput<String?>('options');
    this.otsDetail = registerOutput<RestoreJobOtsDetail>('otsDetail');
    this.restoreJobId = registerOutput<String>('restoreJobId');
    this.restoreType = registerOutput<String>('restoreType');
    this.snapshotHash = registerOutput<String>('snapshotHash');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.sourceType = registerOutput<String>('sourceType');
    this.status = registerOutput<String>('status');
    this.targetBucket = registerOutput<String?>('targetBucket');
    this.targetClientId = registerOutput<String?>('targetClientId');
    this.targetCreateTime = registerOutput<String?>('targetCreateTime');
    this.targetDataSourceId = registerOutput<String?>('targetDataSourceId');
    this.targetFileSystemId = registerOutput<String?>('targetFileSystemId');
    this.targetInstanceId = registerOutput<String?>('targetInstanceId');
    this.targetInstanceName = registerOutput<String?>('targetInstanceName');
    this.targetPath = registerOutput<String?>('targetPath');
    this.targetPrefix = registerOutput<String?>('targetPrefix');
    this.targetTableName = registerOutput<String?>('targetTableName');
    this.targetTime = registerOutput<String?>('targetTime');
    this.udmDetail = registerOutput<String?>('udmDetail');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
