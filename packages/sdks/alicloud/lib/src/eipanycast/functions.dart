import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_anycast_eip_addresses_args.dart';
import 'get_anycast_eip_addresses_result.dart';

/// This data source provides the Eipanycast Anycast Eip Addresses of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.113.0+.
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
/// const example = alicloud.eipanycast.getAnycastEipAddresses({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstEipanycastAnycastEipAddressId = example.then(example => example.addresses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.eipanycast.get_anycast_eip_addresses(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstEipanycastAnycastEipAddressId", example.addresses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.EipAnycast.GetAnycastEipAddresses.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEipanycastAnycastEipAddressId"] = example.Apply(getAnycastEipAddressesResult => getAnycastEipAddressesResult.Addresses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eipanycast"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eipanycast.GetAnycastEipAddresses(ctx, &eipanycast.GetAnycastEipAddressesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEipanycastAnycastEipAddressId", example.Addresses[0].Id)
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
/// import com.pulumi.alicloud.eipanycast.EipanycastFunctions;
/// import com.pulumi.alicloud.eipanycast.inputs.GetAnycastEipAddressesArgs;
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
///         final var example = EipanycastFunctions.getAnycastEipAddresses(GetAnycastEipAddressesArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstEipanycastAnycastEipAddressId", example.addresses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:eipanycast:getAnycastEipAddresses
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstEipanycastAnycastEipAddressId: ${example.addresses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eipanycast_get_anycast_eip_addresses_get_anycast_eip_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAnycastEipAddressesResult> getAnycastEipAddresses(
  GetAnycastEipAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eipanycast/getAnycastEipAddresses:getAnycastEipAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnycastEipAddressesResult.fromMap(result);
}
