import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_base_instances_args.dart';
import 'get_base_instances_result.dart';

/// This data source provides the Ocean Base Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.203.0+.
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
/// const ids = alicloud.ocean.getBaseInstances({});
/// export const oceanBaseInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// const nameRegex = alicloud.ocean.getBaseInstances({
///     nameRegex: "^my-Instance",
/// });
/// export const oceanBaseInstanceId2 = nameRegex.then(nameRegex => nameRegex.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ocean.get_base_instances()
/// pulumi.export("oceanBaseInstanceId1", ids.instances[0].id)
/// name_regex = alicloud.ocean.get_base_instances(name_regex="^my-Instance")
/// pulumi.export("oceanBaseInstanceId2", name_regex.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ocean.GetBaseInstances.Invoke();
///
///     var nameRegex = AliCloud.Ocean.GetBaseInstances.Invoke(new()
///     {
///         NameRegex = "^my-Instance",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["oceanBaseInstanceId1"] = ids.Apply(getBaseInstancesResult => getBaseInstancesResult.Instances[0]?.Id),
///         ["oceanBaseInstanceId2"] = nameRegex.Apply(getBaseInstancesResult => getBaseInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ocean.GetBaseInstances(ctx, &ocean.GetBaseInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oceanBaseInstanceId1", ids.Instances[0].Id)
/// 		nameRegex, err := ocean.GetBaseInstances(ctx, &ocean.GetBaseInstancesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("oceanBaseInstanceId2", nameRegex.Instances[0].Id)
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
/// import com.pulumi.alicloud.ocean.OceanFunctions;
/// import com.pulumi.alicloud.ocean.inputs.GetBaseInstancesArgs;
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
///         final var ids = OceanFunctions.getBaseInstances(GetBaseInstancesArgs.builder()
///             .build());
///
///         ctx.export("oceanBaseInstanceId1", ids.instances()[0].id());
///         final var nameRegex = OceanFunctions.getBaseInstances(GetBaseInstancesArgs.builder()
///             .nameRegex("^my-Instance")
///             .build());
///
///         ctx.export("oceanBaseInstanceId2", nameRegex.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ocean:getBaseInstances
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ocean:getBaseInstances
///       arguments:
///         nameRegex: ^my-Instance
/// outputs:
///   oceanBaseInstanceId1: ${ids.instances[0].id}
///   oceanBaseInstanceId2: ${nameRegex.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ocean_get_base_instances_get_base_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBaseInstancesResult> getBaseInstances(
  GetBaseInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ocean/getBaseInstances:getBaseInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBaseInstancesResult.fromMap(result);
}
