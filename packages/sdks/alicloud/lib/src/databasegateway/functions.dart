import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateways_args.dart';
import 'get_gateways_result.dart';

/// This data source provides the Database Gateway Gateways of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
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
/// const ids = alicloud.databasegateway.getGateways({
///     ids: ["example_id"],
/// });
/// export const databaseGatewayGatewayId1 = ids.then(ids => ids.gateways?.[0]?.id);
/// const nameRegex = alicloud.databasegateway.getGateways({
///     nameRegex: "^my-Gateway",
/// });
/// export const databaseGatewayGatewayId2 = nameRegex.then(nameRegex => nameRegex.gateways?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.databasegateway.get_gateways(ids=["example_id"])
/// pulumi.export("databaseGatewayGatewayId1", ids.gateways[0].id)
/// name_regex = alicloud.databasegateway.get_gateways(name_regex="^my-Gateway")
/// pulumi.export("databaseGatewayGatewayId2", name_regex.gateways[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.DatabaseGateway.GetGateways.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.DatabaseGateway.GetGateways.Invoke(new()
///     {
///         NameRegex = "^my-Gateway",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databaseGatewayGatewayId1"] = ids.Apply(getGatewaysResult => getGatewaysResult.Gateways[0]?.Id),
///         ["databaseGatewayGatewayId2"] = nameRegex.Apply(getGatewaysResult => getGatewaysResult.Gateways[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := databasegateway.GetGateways(ctx, &databasegateway.GetGatewaysArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("databaseGatewayGatewayId1", ids.Gateways[0].Id)
/// 		nameRegex, err := databasegateway.GetGateways(ctx, &databasegateway.GetGatewaysArgs{
/// 			NameRegex: pulumi.StringRef("^my-Gateway"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("databaseGatewayGatewayId2", nameRegex.Gateways[0].Id)
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
/// import com.pulumi.alicloud.databasegateway.DatabasegatewayFunctions;
/// import com.pulumi.alicloud.databasegateway.inputs.GetGatewaysArgs;
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
///         final var ids = DatabasegatewayFunctions.getGateways(GetGatewaysArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("databaseGatewayGatewayId1", ids.gateways()[0].id());
///         final var nameRegex = DatabasegatewayFunctions.getGateways(GetGatewaysArgs.builder()
///             .nameRegex("^my-Gateway")
///             .build());
///
///         ctx.export("databaseGatewayGatewayId2", nameRegex.gateways()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:databasegateway:getGateways
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:databasegateway:getGateways
///       arguments:
///         nameRegex: ^my-Gateway
/// outputs:
///   databaseGatewayGatewayId1: ${ids.gateways[0].id}
///   databaseGatewayGatewayId2: ${nameRegex.gateways[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_databasegateway_get_gateways_get_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewaysResult> getGateways(
  GetGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:databasegateway/getGateways:getGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewaysResult.fromMap(result);
}
