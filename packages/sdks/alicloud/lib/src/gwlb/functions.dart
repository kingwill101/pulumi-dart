import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides Gwlb Zone available to the user.[What is Zone](https://www.alibabacloud.com/help/en/)
///
/// &gt; **NOTE:** Available since v1.236.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.gwlb.getZones({});
/// export const alicloudGwlbZoneExampleId = _default.then(_default => _default.zones?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.gwlb.get_zones()
/// pulumi.export("alicloudGwlbZoneExampleId", default.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Gwlb.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudGwlbZoneExampleId"] = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gwlb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := gwlb.GetZones(ctx, &gwlb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudGwlbZoneExampleId", _default.Zones[0].Id)
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
/// import com.pulumi.alicloud.gwlb.GwlbFunctions;
/// import com.pulumi.alicloud.gwlb.inputs.GetZonesArgs;
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
///         final var default = GwlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("alicloudGwlbZoneExampleId", default_.zones()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:gwlb:getZones
///       arguments: {}
/// outputs:
///   alicloudGwlbZoneExampleId: ${default.zones[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_gwlb_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:gwlb/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
