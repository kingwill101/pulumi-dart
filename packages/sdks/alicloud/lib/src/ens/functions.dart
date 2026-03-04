import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pairs_args.dart';
import 'get_key_pairs_result.dart';

/// This data source provides the Ens Key Pairs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.133.0+.
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
/// const nameRegex = alicloud.ens.getKeyPairs({
///     version: "example_value",
///     nameRegex: "^my-KeyPair",
/// });
/// export const ensKeyPairId1 = nameRegex.then(nameRegex => nameRegex.pairs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.ens.get_key_pairs(version="example_value",
///     name_regex="^my-KeyPair")
/// pulumi.export("ensKeyPairId1", name_regex.pairs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.Ens.GetKeyPairs.Invoke(new()
///     {
///         Version = "example_value",
///         NameRegex = "^my-KeyPair",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ensKeyPairId1"] = nameRegex.Apply(getKeyPairsResult => getKeyPairsResult.Pairs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := ens.GetKeyPairs(ctx, &ens.GetKeyPairsArgs{
/// 			Version:   "example_value",
/// 			NameRegex: pulumi.StringRef("^my-KeyPair"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ensKeyPairId1", nameRegex.Pairs[0].Id)
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
/// import com.pulumi.alicloud.ens.EnsFunctions;
/// import com.pulumi.alicloud.ens.inputs.GetKeyPairsArgs;
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
///         final var nameRegex = EnsFunctions.getKeyPairs(GetKeyPairsArgs.builder()
///             .version("example_value")
///             .nameRegex("^my-KeyPair")
///             .build());
///
///         ctx.export("ensKeyPairId1", nameRegex.pairs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ens:getKeyPairs
///       arguments:
///         version: example_value
///         nameRegex: ^my-KeyPair
/// outputs:
///   ensKeyPairId1: ${nameRegex.pairs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ens_get_key_pairs_get_key_pairs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyPairsResult> getKeyPairs(
  GetKeyPairsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ens/getKeyPairs:getKeyPairs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyPairsResult.fromMap(result);
}
