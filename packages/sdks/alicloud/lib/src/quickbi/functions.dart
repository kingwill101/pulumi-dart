import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_users_args.dart';
import 'get_users_result.dart';

/// This data source provides the Quick BI Users of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.136.0+.
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
/// const ids = alicloud.quickbi.getUsers({
///     ids: ["example_id"],
/// });
/// export const quickBiUserId1 = ids.then(ids => ids.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.quickbi.get_users(ids=["example_id"])
/// pulumi.export("quickBiUserId1", ids.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.QuickBI.GetUsers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["quickBiUserId1"] = ids.Apply(getUsersResult => getUsersResult.Users[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quickbi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := quickbi.GetUsers(ctx, &quickbi.GetUsersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("quickBiUserId1", ids.Users[0].Id)
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
/// import com.pulumi.alicloud.quickbi.QuickbiFunctions;
/// import com.pulumi.alicloud.quickbi.inputs.GetUsersArgs;
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
///         final var ids = QuickbiFunctions.getUsers(GetUsersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("quickBiUserId1", ids.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:quickbi:getUsers
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   quickBiUserId1: ${ids.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_quickbi_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:quickbi/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}
