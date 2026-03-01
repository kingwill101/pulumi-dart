import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_args.dart';
import 'get_instances_result.dart';

/// This data source provides the Lindorm Instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.132.0+.
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
/// const ids = alicloud.lindorm.getInstances({});
/// export const lindormInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// const nameRegex = alicloud.lindorm.getInstances({
///     nameRegex: "^my-Instance",
/// });
/// export const lindormInstanceId2 = nameRegex.then(nameRegex => nameRegex.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.lindorm.get_instances()
/// pulumi.export("lindormInstanceId1", ids.instances[0].id)
/// name_regex = alicloud.lindorm.get_instances(name_regex="^my-Instance")
/// pulumi.export("lindormInstanceId2", name_regex.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Lindorm.GetInstances.Invoke();
///
///     var nameRegex = AliCloud.Lindorm.GetInstances.Invoke(new()
///     {
///         NameRegex = "^my-Instance",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["lindormInstanceId1"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///         ["lindormInstanceId2"] = nameRegex.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/lindorm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := lindorm.GetInstances(ctx, &lindorm.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("lindormInstanceId1", ids.Instances[0].Id)
/// 		nameRegex, err := lindorm.GetInstances(ctx, &lindorm.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("lindormInstanceId2", nameRegex.Instances[0].Id)
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
/// import com.pulumi.alicloud.lindorm.LindormFunctions;
/// import com.pulumi.alicloud.lindorm.inputs.GetInstancesArgs;
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
///         final var ids = LindormFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("lindormInstanceId1", ids.instances()[0].id());
///         final var nameRegex = LindormFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("^my-Instance")
///             .build());
///
///         ctx.export("lindormInstanceId2", nameRegex.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:lindorm:getInstances
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:lindorm:getInstances
///       arguments:
///         nameRegex: ^my-Instance
/// outputs:
///   lindormInstanceId1: ${ids.instances[0].id}
///   lindormInstanceId2: ${nameRegex.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_lindorm_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:lindorm/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}
