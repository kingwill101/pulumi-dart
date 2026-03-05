import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_instance_args.dart';
import 'base_instance_state.dart';

/// Provides a Ocean Base Instance resource.
///
///
///
/// For information about Ocean Base Instance and how to use it, see [What is Instance](https://www.alibabacloud.com/help/en/apsaradb-for-oceanbase/latest/what-is-oceanbase-database).
///
/// &gt; **NOTE:** Available since v1.203.0.
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
/// const _default = alicloud.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultBaseInstance = new alicloud.ocean.BaseInstance("default", {
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     zones: [
///         pulumi.all([_default, _default.then(_default => _default.ids).length]).apply(([_default, length]) => _default.ids[length - 2]),
///         pulumi.all([_default, _default.then(_default => _default.ids).length]).apply(([_default, length]) => _default.ids[length - 3]),
///         pulumi.all([_default, _default.then(_default => _default.ids).length]).apply(([_default, length]) => _default.ids[length - 4]),
///     ],
///     autoRenew: false,
///     diskSize: 100,
///     paymentType: "PayAsYouGo",
///     instanceClass: "8C32G",
///     backupRetainMode: "delete_all",
///     series: "normal",
///     instanceName: name,
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
/// default = alicloud.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_base_instance = alicloud.ocean.BaseInstance("default",
///     resource_group_id=default_get_resource_groups.ids[0],
///     zones=[
///         len(default.ids).apply(lambda length: default.ids[length - 2]),
///         len(default.ids).apply(lambda length: default.ids[length - 3]),
///         len(default.ids).apply(lambda length: default.ids[length - 4]),
///     ],
///     auto_renew=False,
///     disk_size=100,
///     payment_type="PayAsYouGo",
///     instance_class="8C32G",
///     backup_retain_mode="delete_all",
///     series="normal",
///     instance_name=name)
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
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultBaseInstance = new AliCloud.Ocean.BaseInstance("default", new()
///     {
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         Zones = new[]
///         {
///             Output.Tuple(@default, @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids)).Length).Apply(values =>
///             {
///                 var @default = values.Item1;
///                 var length = values.Item2;
///                 return @default.Apply(getZonesResult => getZonesResult.Ids)[length - 2];
///             }),
///             Output.Tuple(@default, @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids)).Length).Apply(values =>
///             {
///                 var @default = values.Item1;
///                 var length = values.Item2;
///                 return @default.Apply(getZonesResult => getZonesResult.Ids)[length - 3];
///             }),
///             Output.Tuple(@default, @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids)).Length).Apply(values =>
///             {
///                 var @default = values.Item1;
///                 var length = values.Item2;
///                 return @default.Apply(getZonesResult => getZonesResult.Ids)[length - 4];
///             }),
///         },
///         AutoRenew = false,
///         DiskSize = 100,
///         PaymentType = "PayAsYouGo",
///         InstanceClass = "8C32G",
///         BackupRetainMode = "delete_all",
///         Series = "normal",
///         InstanceName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ocean"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ocean.NewBaseInstance(ctx, "default", &ocean.BaseInstanceArgs{
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			Zones: pulumi.StringArray{
/// 				len(_default.Ids).ApplyT(func(length int) (string, error) {
/// 					return _default.Ids[float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 						return __convert - 2, nil
/// 					}).(pulumi.Float64Output))], nil
/// 				}).(pulumi.StringOutput),
/// 				len(_default.Ids).ApplyT(func(length int) (string, error) {
/// 					return _default.Ids[float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 						return __convert - 3, nil
/// 					}).(pulumi.Float64Output))], nil
/// 				}).(pulumi.StringOutput),
/// 				len(_default.Ids).ApplyT(func(length int) (string, error) {
/// 					return _default.Ids[float64(length.ApplyT(func(__convert float64) (float64, error) {
/// 						return __convert - 4, nil
/// 					}).(pulumi.Float64Output))], nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			AutoRenew:        pulumi.Bool(false),
/// 			DiskSize:         pulumi.Int(100),
/// 			PaymentType:      pulumi.String("PayAsYouGo"),
/// 			InstanceClass:    pulumi.String("8C32G"),
/// 			BackupRetainMode: pulumi.String("delete_all"),
/// 			Series:           pulumi.String("normal"),
/// 			InstanceName:     pulumi.String(name),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ocean.BaseInstance;
/// import com.pulumi.alicloud.ocean.BaseInstanceArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultBaseInstance = new BaseInstance("defaultBaseInstance", BaseInstanceArgs.builder()
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .zones(
///                 default_.ids().length().applyValue(_length -> default_.ids()[_length - 2]),
///                 default_.ids().length().applyValue(_length -> default_.ids()[_length - 3]),
///                 default_.ids().length().applyValue(_length -> default_.ids()[_length - 4]))
///             .autoRenew(false)
///             .diskSize(100)
///             .paymentType("PayAsYouGo")
///             .instanceClass("8C32G")
///             .backupRetainMode("delete_all")
///             .series("normal")
///             .instanceName(name)
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ocean Base Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ocean/baseInstance:BaseInstance example <id>
/// ```
class BaseInstance extends pulumi.CustomResource {
  /// Whether to automatically renew.
  ///
  /// It takes effect when the parameter ChargeType is PrePaid. Value range:
  /// - true: automatic renewal.
  /// - false (default): no automatic renewal.
  late final pulumi.Output<bool?> autoRenew;
  /// The duration of each auto-renewal. When the value of the AutoRenew parameter is True, this parameter is required.
  /// - PeriodUnit is Week, AutoRenewPeriod is {"1", "2", "3"}.
  /// - PeriodUnit is Month, AutoRenewPeriod is {"1", "2", "3", "6", "12"}.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// The backup retention policy after the cluster is deleted. The values are as follows:
  /// - receive_all: Keep all backup sets;
  /// - delete_all: delete all backup sets;
  /// - receive_last: Keep the last backup set.
  ///
  /// &gt; **NOTE:**   The default value is delete_all.
  late final pulumi.Output<String?> backupRetainMode;
  /// The product code of the OceanBase cluster._oceanbasepre_public_cn: Domestic station cloud database package Year-to-month package._oceanbasepost_public_cn: The domestic station cloud database is paid by the hour._obpre_public_intl: International Station Cloud Database Package Monthly Package.
  late final pulumi.Output<String> commodityCode;
  /// The number of CPU cores of the cluster.
  late final pulumi.Output<int> cpu;
  /// Cpu architecture, x86, arm. If no, the default value is x86
  late final pulumi.Output<String> cpuArch;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The size of the storage space, in GB.
  ///
  /// The limits of storage space vary according to the cluster specifications, as follows:
  /// - 8C32GB:100GB ~ 10000GB
  /// - 14C70GB:200GB ~ 10000GB
  /// - 30C180GB:400GB ~ 10000GB
  /// - 62C400G:800GB ~ 10000GB.
  ///
  /// The default value of each package is its minimum value.
  late final pulumi.Output<int> diskSize;
  /// The storage type of the cluster. Effective only in the standard cluster version (cloud disk).
  ///
  /// Two types are currently supported:
  /// - cloud_essd_pl1: cloud disk ESSD pl1.
  /// - cloud_essd_pl0: cloud disk ESSD pl0. The default value is cloud_essd_pl1.
  late final pulumi.Output<String> diskType;
  /// Cluster specification information. Note Please enter the shape as xCxxG, not xCxxGB
  ///
  /// The x86 cluster architecture currently supports the following packages:
  /// - 4C16G:4 core 16GB
  /// - 8C32G:8 core 32GB
  /// - 14C70G:14 core 70GB
  /// - 24C120G:24 core 120GB
  /// - 30C180G:30 core 180GB
  /// - 62C400G:62 core 400GB
  /// - 104C600G:104 core 600GB
  /// - 16C70G:16 core 70GB
  /// - 32C160G:32 core 160GB
  /// - 64C380G:64 core 380GB
  /// - 20C32G:20 core 32GB
  /// - 40C64G:40 core 64GB
  /// - 16C32G:16 core 32GB
  /// - 32C70G:32 core 70GB
  /// - 64C180G:64 core 180GB
  /// - 32C180G:32 core 180GB
  /// - 64C400G:64 core 400GB,
  ///
  /// The cluster architecture of arm currently supports the following packages:
  /// - 8C32G:8 core 32GB
  /// - 16C70G:16 core 70GB
  /// - 32C180G:32 core 180GB
  late final pulumi.Output<String> instanceClass;
  /// OceanBase cluster name.
  ///
  /// The length is 1 to 20 English or Chinese characters.
  ///
  /// If this parameter is not specified, the default value is the InstanceId of the cluster.
  late final pulumi.Output<String> instanceName;
  /// The number of nodes in the cluster. If the deployment mode is n-n-n, the number of nodes is n * 3
  late final pulumi.Output<String> nodeNum;
  /// The OceanBase Server version number.
  late final pulumi.Output<String> obVersion;
  /// The payment method of the instance. Value range:
  /// - Subscription: Package year and month. When you select this type of payment method, you must make sure that your account supports balance payment or credit payment. Otherwise, an InvalidPayMethod error message will be returned.
  /// - PayAsYouGo (default): Pay-as-you-go (default hourly billing).
  late final pulumi.Output<String> paymentType;
  /// The duration of the resource purchase. The unit is specified by the PeriodUnit. The parameter InstanceChargeType takes effect only when the value is PrePaid and is required. Once the DedicatedHostId is specified, the value cannot exceed the subscription duration of the dedicated host. When PeriodUnit = Week, Period values: {"1", "2", "3", "4"}. When PeriodUnit = Month, Period values: {"1", "2", "3", "4", "5", "6", "7", "8", "9", "12", "24", "36", "48", "60"}.
  late final pulumi.Output<int?> period;
  /// The duration of the purchase of resources.
  ///
  /// Package year and Month value range: Month.
  ///
  /// Default value: Month of the package, which is billed by volume. The default period is Hour.
  late final pulumi.Output<String?> periodUnit;
  /// The ID of the primary instance.
  late final pulumi.Output<String?> primaryInstance;
  /// The primary instance Region.
  late final pulumi.Output<String?> primaryRegion;
  /// The ID of the enterprise resource group to which the instance resides.
  late final pulumi.Output<String> resourceGroupId;
  /// Series of OceanBase cluster instances-normal (default): Standard cluster version (cloud disk)-normal_SSD: Standard cluster version (local disk)-history: history Library cluster version.
  late final pulumi.Output<String> series;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// Valid values:
  /// - false: migration and configuration change.
  /// - true: in-situ matching
  late final pulumi.Output<bool?> upgradeSpecNative;
  /// Information about the zone where the cluster is deployed.
  late final pulumi.Output<List<String>> zones;

  /// Creates a new [BaseInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BaseInstance]. {@macro pulumi_ocean_base_instance_base_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BaseInstance(
    String name, {
    BaseInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ocean/baseInstance:BaseInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    backupRetainMode = registerOutput<String?>('backupRetainMode');
    commodityCode = registerOutput<String>('commodityCode');
    cpu = registerOutput<int>('cpu');
    cpuArch = registerOutput<String>('cpuArch');
    createTime = registerOutput<String>('createTime');
    diskSize = registerOutput<int>('diskSize');
    diskType = registerOutput<String>('diskType');
    instanceClass = registerOutput<String>('instanceClass');
    instanceName = registerOutput<String>('instanceName');
    nodeNum = registerOutput<String>('nodeNum');
    obVersion = registerOutput<String>('obVersion');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    primaryInstance = registerOutput<String?>('primaryInstance');
    primaryRegion = registerOutput<String?>('primaryRegion');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    series = registerOutput<String>('series');
    status = registerOutput<String>('status');
    upgradeSpecNative = registerOutput<bool?>('upgradeSpecNative');
    zones = registerOutput<List<String>>('zones');
  }

  /// Gets an existing [BaseInstance] resource's state with the given [name] and [id].
  static BaseInstance get(
    String name,
    pulumi.Input<String> id, {
    BaseInstanceState? state,
  }) {
    return BaseInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BaseInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ocean/baseInstance:BaseInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenew = registerOutput<bool?>('autoRenew');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    backupRetainMode = registerOutput<String?>('backupRetainMode');
    commodityCode = registerOutput<String>('commodityCode');
    cpu = registerOutput<int>('cpu');
    cpuArch = registerOutput<String>('cpuArch');
    createTime = registerOutput<String>('createTime');
    diskSize = registerOutput<int>('diskSize');
    diskType = registerOutput<String>('diskType');
    instanceClass = registerOutput<String>('instanceClass');
    instanceName = registerOutput<String>('instanceName');
    nodeNum = registerOutput<String>('nodeNum');
    obVersion = registerOutput<String>('obVersion');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    primaryInstance = registerOutput<String?>('primaryInstance');
    primaryRegion = registerOutput<String?>('primaryRegion');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    series = registerOutput<String>('series');
    status = registerOutput<String>('status');
    upgradeSpecNative = registerOutput<bool?>('upgradeSpecNative');
    zones = registerOutput<List<String>>('zones');
  }
}
