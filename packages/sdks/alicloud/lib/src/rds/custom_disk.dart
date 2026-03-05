import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_disk_args.dart';
import 'custom_disk_state.dart';

/// Provides a RDS Custom Disk resource.
///
/// RDS User dedicated host disk.
///
/// For information about RDS Custom Disk and how to use it, see [What is Custom Disk](https://next.api.alibabacloud.com/document/Rds/2014-08-15/CreateRCDisk).
///
/// &gt; **NOTE:** Available since v1.247.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const regionId = config.get("regionId") || "cn-beijing";
/// const _default = new alicloud.rds.CustomDisk("default", {
///     description: "zcc测试用例",
///     zoneId: "cn-beijing-i",
///     size: 40,
///     performanceLevel: "PL1",
///     instanceChargeType: "Postpaid",
///     diskCategory: "cloud_essd",
///     diskName: "custom_disk_001",
///     autoRenew: false,
///     period: 1,
///     autoPay: true,
///     periodUnit: "1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-beijing"
/// default = alicloud.rds.CustomDisk("default",
///     description="zcc测试用例",
///     zone_id="cn-beijing-i",
///     size=40,
///     performance_level="PL1",
///     instance_charge_type="Postpaid",
///     disk_category="cloud_essd",
///     disk_name="custom_disk_001",
///     auto_renew=False,
///     period=1,
///     auto_pay=True,
///     period_unit="1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var regionId = config.Get("regionId") ?? "cn-beijing";
///     var @default = new AliCloud.Rds.CustomDisk("default", new()
///     {
///         Description = "zcc测试用例",
///         ZoneId = "cn-beijing-i",
///         Size = 40,
///         PerformanceLevel = "PL1",
///         InstanceChargeType = "Postpaid",
///         DiskCategory = "cloud_essd",
///         DiskName = "custom_disk_001",
///         AutoRenew = false,
///         Period = 1,
///         AutoPay = true,
///         PeriodUnit = "1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		regionId := "cn-beijing"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		_, err := rds.NewCustomDisk(ctx, "default", &rds.CustomDiskArgs{
/// 			Description:        pulumi.String("zcc测试用例"),
/// 			ZoneId:             pulumi.String("cn-beijing-i"),
/// 			Size:               pulumi.Int(40),
/// 			PerformanceLevel:   pulumi.String("PL1"),
/// 			InstanceChargeType: pulumi.String("Postpaid"),
/// 			DiskCategory:       pulumi.String("cloud_essd"),
/// 			DiskName:           pulumi.String("custom_disk_001"),
/// 			AutoRenew:          pulumi.Bool(false),
/// 			Period:             pulumi.Int(1),
/// 			AutoPay:            pulumi.Bool(true),
/// 			PeriodUnit:         pulumi.String("1"),
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
/// import com.pulumi.alicloud.rds.CustomDisk;
/// import com.pulumi.alicloud.rds.CustomDiskArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var regionId = config.get("regionId").orElse("cn-beijing");
///         var default_ = new CustomDisk("default", CustomDiskArgs.builder()
///             .description("zcc测试用例")
///             .zoneId("cn-beijing-i")
///             .size(40)
///             .performanceLevel("PL1")
///             .instanceChargeType("Postpaid")
///             .diskCategory("cloud_essd")
///             .diskName("custom_disk_001")
///             .autoRenew(false)
///             .period(1)
///             .autoPay(true)
///             .periodUnit("1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   regionId:
///     type: string
///     default: cn-beijing
/// resources:
///   default:
///     type: alicloud:rds:CustomDisk
///     properties:
///       description: zcc测试用例
///       zoneId: cn-beijing-i
///       size: '40'
///       performanceLevel: PL1
///       instanceChargeType: Postpaid
///       diskCategory: cloud_essd
///       diskName: custom_disk_001
///       autoRenew: false
///       period: '1'
///       autoPay: true
///       periodUnit: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Custom Disk can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/customDisk:CustomDisk example <id>
/// ```
class CustomDisk extends pulumi.CustomResource {
  /// Whether to pay automatically. Value range:
  late final pulumi.Output<bool?> autoPay;
  /// Whether to automatically renew. This parameter is passed in only when you create a data disk. Valid values:
  late final pulumi.Output<bool?> autoRenew;
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// The disk description. It must be 2 to 256 characters in length and cannot start with 'http:// 'or 'https.
  /// Default value: empty.
  late final pulumi.Output<String?> description;
  /// The type of the data disk. Value range:
  late final pulumi.Output<String> diskCategory;
  /// The disk name. It can be 2 to 128 characters in length. It supports letters in Unicode (including English, Chinese, and numbers). Can contain a colon (:), an underscore (_), a period (.), or a dash (-).
  /// Default value: empty.
  late final pulumi.Output<String?> diskName;
  /// Whether to pre-check the instance creation operation. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The Payment type. Only `Postpaid`: Pay-As-You-Go is supported.
  late final pulumi.Output<String?> instanceChargeType;
  /// When creating an ESSD cloud disk, set the performance level of the disk. Value range:
  /// - `PL0`: The maximum random read/write IOPS 10000 for a single disk.
  /// - `PL1` (default): The maximum number of random read/write IOPS 50000 for a single disk.
  /// - `PL2`: maximum random read/write IOPS 100000 for a single disk.
  /// - `PL3`: The maximum random read/write IOPS 1 million for a single disk.
  ///
  /// For more information about how to select an ESSD performance level, see ESSD cloud disk.
  late final pulumi.Output<String?> performanceLevel;
  /// Reserved parameters, no need to fill in.
  late final pulumi.Output<int?> period;
  /// Reserved parameters, no need to fill in.
  late final pulumi.Output<String?> periodUnit;
  /// The region ID. You can view the region ID through the DescribeRegions interface.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group to which the disk belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// Capacity size. Unit: GiB. You must pass in a parameter value for this parameter. Value range:
  late final pulumi.Output<int> size;
  /// The snapshot used to create the cloud disk. Snapshots made on or before July 15, 2013 cannot be used to create cloud disks. The 'SnapshotId' parameter and the 'Size' parameter have the following limitations:
  /// - If the snapshot capacity corresponding to the 'SnapshotId' parameter is greater than the set 'Size' parameter value, the actual size of the cloud disk created is the size of the specified snapshot.
  /// - If the snapshot capacity corresponding to the 'SnapshotId' parameter is less than the set 'Size' parameter value, the size of the cloud disk created is the specified 'Size' parameter value.
  /// - Snapshots are not supported for creating elastic temporary disks.
  late final pulumi.Output<String?> snapshotId;
  /// Disk status. Value Description:_use: In use.
  late final pulumi.Output<String> status;
  /// The method of expanding the disk. Value range:
  /// offline (default): offline expansion. After the expansion, the instance must be restarted to take effect.
  /// online: online expansion, which can be completed without restarting the instance.
  late final pulumi.Output<String?> type;
  /// The zone ID.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [CustomDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDisk]. {@macro pulumi_rds_custom_disk_custom_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDisk(
    String name, {
    CustomDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/customDisk:CustomDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    diskCategory = registerOutput<String>('diskCategory');
    diskName = registerOutput<String?>('diskName');
    dryRun = registerOutput<bool?>('dryRun');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    performanceLevel = registerOutput<String?>('performanceLevel');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
    status = registerOutput<String>('status');
    type = registerOutput<String?>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [CustomDisk] resource's state with the given [name] and [id].
  static CustomDisk get(
    String name,
    pulumi.Input<String> id, {
    CustomDiskState? state,
  }) {
    return CustomDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/customDisk:CustomDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    diskCategory = registerOutput<String>('diskCategory');
    diskName = registerOutput<String?>('diskName');
    dryRun = registerOutput<bool?>('dryRun');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    performanceLevel = registerOutput<String?>('performanceLevel');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    size = registerOutput<int>('size');
    snapshotId = registerOutput<String?>('snapshotId');
    status = registerOutput<String>('status');
    type = registerOutput<String?>('type');
    zoneId = registerOutput<String>('zoneId');
  }
}
