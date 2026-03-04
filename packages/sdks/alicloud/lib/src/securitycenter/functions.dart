import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_args.dart';
import 'get_groups_result.dart';

/// This data source provides the Security Center Groups of the current Alibaba Cloud user.
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
/// const nameRegex = alicloud.securitycenter.getGroups({
///     nameRegex: "^my-Group",
/// });
/// export const securityCenterGroups = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// name_regex = alicloud.securitycenter.get_groups(name_regex="^my-Group")
/// pulumi.export("securityCenterGroups", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nameRegex = AliCloud.SecurityCenter.GetGroups.Invoke(new()
///     {
///         NameRegex = "^my-Group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["securityCenterGroups"] = nameRegex.Apply(getGroupsResult => getGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/securitycenter"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		nameRegex, err := securitycenter.GetGroups(ctx, &securitycenter.GetGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Group"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("securityCenterGroups", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.securitycenter.SecuritycenterFunctions;
/// import com.pulumi.alicloud.securitycenter.inputs.GetGroupsArgs;
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
///         final var nameRegex = SecuritycenterFunctions.getGroups(GetGroupsArgs.builder()
///             .nameRegex("^my-Group")
///             .build());
///
///         ctx.export("securityCenterGroups", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   nameRegex:
///     fn::invoke:
///       function: alicloud:securitycenter:getGroups
///       arguments:
///         nameRegex: ^my-Group
/// outputs:
///   securityCenterGroups: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:securitycenter/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}
