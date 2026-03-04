import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_namespaces_args.dart';
import 'get_namespaces_result.dart';

/// This data source provides the Schedulerx Namespaces of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.173.0+.
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
/// const ids = alicloud.schedulerx.getNamespaces({});
/// export const schedulerxNamespaceId1 = ids.then(ids => ids.namespaces?.[0]?.id);
/// const nameRegex = alicloud.schedulerx.getNamespaces({
///     nameRegex: "^my-Namespace",
/// });
/// export const schedulerxNamespaceId2 = nameRegex.then(nameRegex => nameRegex.namespaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.schedulerx.get_namespaces()
/// pulumi.export("schedulerxNamespaceId1", ids.namespaces[0].id)
/// name_regex = alicloud.schedulerx.get_namespaces(name_regex="^my-Namespace")
/// pulumi.export("schedulerxNamespaceId2", name_regex.namespaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.SchedulerX.GetNamespaces.Invoke();
///
///     var nameRegex = AliCloud.SchedulerX.GetNamespaces.Invoke(new()
///     {
///         NameRegex = "^my-Namespace",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["schedulerxNamespaceId1"] = ids.Apply(getNamespacesResult => getNamespacesResult.Namespaces[0]?.Id),
///         ["schedulerxNamespaceId2"] = nameRegex.Apply(getNamespacesResult => getNamespacesResult.Namespaces[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/schedulerx"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := schedulerx.GetNamespaces(ctx, &schedulerx.GetNamespacesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("schedulerxNamespaceId1", ids.Namespaces[0].Id)
/// 		nameRegex, err := schedulerx.GetNamespaces(ctx, &schedulerx.GetNamespacesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Namespace"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("schedulerxNamespaceId2", nameRegex.Namespaces[0].Id)
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
/// import com.pulumi.alicloud.schedulerx.SchedulerxFunctions;
/// import com.pulumi.alicloud.schedulerx.inputs.GetNamespacesArgs;
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
///         final var ids = SchedulerxFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .build());
///
///         ctx.export("schedulerxNamespaceId1", ids.namespaces()[0].id());
///         final var nameRegex = SchedulerxFunctions.getNamespaces(GetNamespacesArgs.builder()
///             .nameRegex("^my-Namespace")
///             .build());
///
///         ctx.export("schedulerxNamespaceId2", nameRegex.namespaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:schedulerx:getNamespaces
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:schedulerx:getNamespaces
///       arguments:
///         nameRegex: ^my-Namespace
/// outputs:
///   schedulerxNamespaceId1: ${ids.namespaces[0].id}
///   schedulerxNamespaceId2: ${nameRegex.namespaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_schedulerx_get_namespaces_get_namespaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespacesResult> getNamespaces(
  GetNamespacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:schedulerx/getNamespaces:getNamespaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespacesResult.fromMap(result);
}
