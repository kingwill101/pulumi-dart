import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides availability instance_types for HBase that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available since v1.106.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.hbase.getInstanceTypes({
///     chargeType: "Postpaid",
///     regionId: "cn-shanghai",
///     zoneId: "cn-shanghai-g",
///     engine: "hbaseue",
///     version: "2.0",
///     instanceType: "hbase.sn2.large",
///     diskType: "cloud_ssd",
/// });
/// const hbase = new alicloud.hbase.Instance("hbase", {coreInstanceType: _default.then(_default => _default.types?.[0]?.id)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.hbase.get_instance_types(charge_type="Postpaid",
///     region_id="cn-shanghai",
///     zone_id="cn-shanghai-g",
///     engine="hbaseue",
///     version="2.0",
///     instance_type="hbase.sn2.large",
///     disk_type="cloud_ssd")
/// hbase = alicloud.hbase.Instance("hbase", core_instance_type=default.types[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Hbase.GetInstanceTypes.Invoke(new()
///     {
///         ChargeType = "Postpaid",
///         RegionId = "cn-shanghai",
///         ZoneId = "cn-shanghai-g",
///         Engine = "hbaseue",
///         Version = "2.0",
///         InstanceType = "hbase.sn2.large",
///         DiskType = "cloud_ssd",
///     });
///
///     var hbase = new AliCloud.Hbase.Instance("hbase", new()
///     {
///         CoreInstanceType = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.Types[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := hbase.GetInstanceTypes(ctx, &hbase.GetInstanceTypesArgs{
/// 			ChargeType:   pulumi.StringRef("Postpaid"),
/// 			RegionId:     pulumi.StringRef("cn-shanghai"),
/// 			ZoneId:       pulumi.StringRef("cn-shanghai-g"),
/// 			Engine:       pulumi.StringRef("hbaseue"),
/// 			Version:      pulumi.StringRef("2.0"),
/// 			InstanceType: pulumi.StringRef("hbase.sn2.large"),
/// 			DiskType:     pulumi.StringRef("cloud_ssd"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbase.NewInstance(ctx, "hbase", &hbase.InstanceArgs{
/// 			CoreInstanceType: pulumi.Any(_default.Types[0].Id),
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
/// import com.pulumi.alicloud.hbase.HbaseFunctions;
/// import com.pulumi.alicloud.hbase.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.hbase.Instance;
/// import com.pulumi.alicloud.hbase.InstanceArgs;
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
///         final var default = HbaseFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .chargeType("Postpaid")
///             .regionId("cn-shanghai")
///             .zoneId("cn-shanghai-g")
///             .engine("hbaseue")
///             .version("2.0")
///             .instanceType("hbase.sn2.large")
///             .diskType("cloud_ssd")
///             .build());
///
///         var hbase = new Instance("hbase", InstanceArgs.builder()
///             .coreInstanceType(default_.types()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hbase:
///     type: alicloud:hbase:Instance
///     properties:
///       coreInstanceType: ${default.types[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:hbase:getInstanceTypes
///       arguments:
///         chargeType: Postpaid
///         regionId: cn-shanghai
///         zoneId: cn-shanghai-g
///         engine: hbaseue
///         version: '2.0'
///         instanceType: hbase.sn2.large
///         diskType: cloud_ssd
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbase_get_instance_types_get_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbase/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}

/// The `alicloud.hbase.getInstances` data source provides a collection of HBase instances available in Alicloud account.
/// Filters support regular expression for the instance name, ids or availability_zone.
///
/// &gt; **NOTE:**  Available in 1.67.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const hbase = alicloud.hbase.getInstances({
///     nameRegex: "tf_testAccHBase",
///     availabilityZone: "cn-shenzhen-b",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// hbase = alicloud.hbase.get_instances(name_regex="tf_testAccHBase",
///     availability_zone="cn-shenzhen-b")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hbase = AliCloud.Hbase.GetInstances.Invoke(new()
///     {
///         NameRegex = "tf_testAccHBase",
///         AvailabilityZone = "cn-shenzhen-b",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hbase.GetInstances(ctx, &hbase.GetInstancesArgs{
/// 			NameRegex:        pulumi.StringRef("tf_testAccHBase"),
/// 			AvailabilityZone: pulumi.StringRef("cn-shenzhen-b"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.hbase.HbaseFunctions;
/// import com.pulumi.alicloud.hbase.inputs.GetInstancesArgs;
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
///         final var hbase = HbaseFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("tf_testAccHBase")
///             .availabilityZone("cn-shenzhen-b")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   hbase:
///     fn::invoke:
///       function: alicloud:hbase:getInstances
///       arguments:
///         nameRegex: tf_testAccHBase
///         availabilityZone: cn-shenzhen-b
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbase_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbase/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides availability zones for HBase that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
/// &gt; **NOTE:** Available in v1.73.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const zonesIds = alicloud.hbase.getZones({});
/// const hbase = new alicloud.hbase.Instance("hbase", {zoneId: zonesIds.then(zonesIds => zonesIds.zones?.[0]?.id)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zones_ids = alicloud.hbase.get_zones()
/// hbase = alicloud.hbase.Instance("hbase", zone_id=zones_ids.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zonesIds = AliCloud.Hbase.GetZones.Invoke();
///
///     var hbase = new AliCloud.Hbase.Instance("hbase", new()
///     {
///         ZoneId = zonesIds.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		zonesIds, err := hbase.GetZones(ctx, &hbase.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbase.NewInstance(ctx, "hbase", &hbase.InstanceArgs{
/// 			ZoneId: pulumi.String(zonesIds.Zones[0].Id),
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
/// import com.pulumi.alicloud.hbase.HbaseFunctions;
/// import com.pulumi.alicloud.hbase.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.hbase.Instance;
/// import com.pulumi.alicloud.hbase.InstanceArgs;
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
///         final var zonesIds = HbaseFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var hbase = new Instance("hbase", InstanceArgs.builder()
///             .zoneId(zonesIds.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hbase:
///     type: alicloud:hbase:Instance
///     properties:
///       zoneId: ${zonesIds.zones[0].id}
/// variables:
///   zonesIds:
///     fn::invoke:
///       function: alicloud:hbase:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_hbase_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:hbase/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
