import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_blocked_regions_args.dart';
import 'get_blocked_regions_result.dart';
import 'get_ip_info_args.dart';
import 'get_ip_info_result.dart';
import 'get_real_time_log_deliveries_args.dart';
import 'get_real_time_log_deliveries_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides the Cdn blocked regions.
///
/// > **NOTE:** Available in v1.173.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cdn.getBlockedRegions({
///     language: "zh",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cdn.get_blocked_regions(language="zh")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cdn.GetBlockedRegions.Invoke(new()
///     {
///         Language = "zh",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.GetBlockedRegions(ctx, &cdn.GetBlockedRegionsArgs{
/// 			Language: "zh",
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
/// import com.pulumi.alicloud.cdn.CdnFunctions;
/// import com.pulumi.alicloud.cdn.inputs.GetBlockedRegionsArgs;
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
///         final var example = CdnFunctions.getBlockedRegions(GetBlockedRegionsArgs.builder()
///             .language("zh")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cdn:getBlockedRegions
///       arguments:
///         language: zh
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_blocked_regions_get_blocked_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlockedRegionsResult> getBlockedRegions(
  GetBlockedRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cdn/getBlockedRegions:getBlockedRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlockedRegionsResult.fromMap(result);
}

/// This data source provides the function of verifying whether an IP is a CDN node.
///
/// > **NOTE:** Available in v1.153.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ipTest = alicloud.cdn.getIpInfo({
///     ip: "114.114.114.114",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ip_test = alicloud.cdn.get_ip_info(ip="114.114.114.114")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ipTest = AliCloud.Cdn.GetIpInfo.Invoke(new()
///     {
///         Ip = "114.114.114.114",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.GetIpInfo(ctx, &cdn.GetIpInfoArgs{
/// 			Ip: "114.114.114.114",
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
/// import com.pulumi.alicloud.cdn.CdnFunctions;
/// import com.pulumi.alicloud.cdn.inputs.GetIpInfoArgs;
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
///         final var ipTest = CdnFunctions.getIpInfo(GetIpInfoArgs.builder()
///             .ip("114.114.114.114")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ipTest:
///     fn::invoke:
///       function: alicloud:cdn:getIpInfo
///       arguments:
///         ip: 114.114.114.114
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_ip_info_get_ip_info_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpInfoResult> getIpInfo(
  GetIpInfoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cdn/getIpInfo:getIpInfo',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpInfoResult.fromMap(result);
}

/// This data source provides the Cdn Real Time Log Deliveries of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.134.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cdn.getRealTimeLogDeliveries({
///     domain: "example_value",
/// });
/// export const cdnRealTimeLogDelivery1 = example.then(example => example.deliveries?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cdn.get_real_time_log_deliveries(domain="example_value")
/// pulumi.export("cdnRealTimeLogDelivery1", example.deliveries[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cdn.GetRealTimeLogDeliveries.Invoke(new()
///     {
///         Domain = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cdnRealTimeLogDelivery1"] = example.Apply(getRealTimeLogDeliveriesResult => getRealTimeLogDeliveriesResult.Deliveries[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cdn.GetRealTimeLogDeliveries(ctx, &cdn.GetRealTimeLogDeliveriesArgs{
/// 			Domain: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cdnRealTimeLogDelivery1", example.Deliveries[0].Id)
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
/// import com.pulumi.alicloud.cdn.CdnFunctions;
/// import com.pulumi.alicloud.cdn.inputs.GetRealTimeLogDeliveriesArgs;
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
///         final var example = CdnFunctions.getRealTimeLogDeliveries(GetRealTimeLogDeliveriesArgs.builder()
///             .domain("example_value")
///             .build());
///
///         ctx.export("cdnRealTimeLogDelivery1", example.deliveries()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cdn:getRealTimeLogDeliveries
///       arguments:
///         domain: example_value
/// outputs:
///   cdnRealTimeLogDelivery1: ${example.deliveries[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_real_time_log_deliveries_get_real_time_log_deliveries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRealTimeLogDeliveriesResult> getRealTimeLogDeliveries(
  GetRealTimeLogDeliveriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cdn/getRealTimeLogDeliveries:getRealTimeLogDeliveries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRealTimeLogDeliveriesResult.fromMap(result);
}

/// Using this data source can enable CDN service automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about CDN and how to use it, see [What is CDN](https://www.alibabacloud.com/help/product/27099.htm).
///
/// > **NOTE:** Available since v1.98.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cdn.getService({
///     enable: "On",
///     internetChargeType: "PayByTraffic",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cdn.get_service(enable="On",
///     internet_charge_type="PayByTraffic")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Cdn.GetService.Invoke(new()
///     {
///         Enable = "On",
///         InternetChargeType = "PayByTraffic",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cdn.GetService(ctx, &cdn.GetServiceArgs{
/// 			Enable:             pulumi.StringRef("On"),
/// 			InternetChargeType: pulumi.StringRef("PayByTraffic"),
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
/// import com.pulumi.alicloud.cdn.CdnFunctions;
/// import com.pulumi.alicloud.cdn.inputs.GetServiceArgs;
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
///         final var open = CdnFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .internetChargeType("PayByTraffic")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cdn:getService
///       arguments:
///         enable: On
///         internetChargeType: PayByTraffic
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cdn/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
