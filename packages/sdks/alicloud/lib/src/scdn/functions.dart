import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_args.dart';
import 'get_domains_result.dart';

/// This data source provides the Scdn Domains of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.131.0+.
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
/// const nameRegex = alicloud.scdn.getDomains({
///     nameRegex: "^my-Domain",
/// });
/// export const scdnDomainId = nameRegex.then(nameRegex => nameRegex.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.scdn.get_domains(name_regex="^my-Domain")
/// pulumi.export("scdnDomainId", name_regex.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.Scdn.GetDomains.Invoke(new()
///     {
///         NameRegex = "^my-Domain",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["scdnDomainId"] = nameRegex.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/scdn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := scdn.GetDomains(ctx, &scdn.GetDomainsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Domain"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("scdnDomainId", nameRegex.Domains[0].Id)
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
/// import com.pulumi.alicloud.scdn.ScdnFunctions;
/// import com.pulumi.alicloud.scdn.inputs.GetDomainsArgs;
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
///         final var nameRegex = ScdnFunctions.getDomains(GetDomainsArgs.builder()
///             .nameRegex("^my-Domain")
///             .build());
///
///         ctx.export("scdnDomainId", nameRegex.domains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:scdn:getDomains
///       arguments:
///         nameRegex: ^my-Domain
/// outputs:
///   scdnDomainId: ${nameRegex.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_scdn_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:scdn/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}
