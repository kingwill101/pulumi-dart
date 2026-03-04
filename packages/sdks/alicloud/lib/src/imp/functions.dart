import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_templates_args.dart';
import 'get_app_templates_result.dart';

/// This data source provides the Imp App Templates of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.137.0+.
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
/// const ids = alicloud.imp.getAppTemplates({});
/// export const impAppTemplateId1 = ids.then(ids => ids.templates?.[0]?.id);
/// const nameRegex = alicloud.imp.getAppTemplates({
///     nameRegex: "^my_AppTemplate",
/// });
/// export const impAppTemplateId2 = nameRegex.then(nameRegex => nameRegex.templates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.imp.get_app_templates()
/// pulumi.export("impAppTemplateId1", ids.templates[0].id)
/// name_regex = alicloud.imp.get_app_templates(name_regex="^my_AppTemplate")
/// pulumi.export("impAppTemplateId2", name_regex.templates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Imp.GetAppTemplates.Invoke();
///
///     var nameRegex = AliCloud.Imp.GetAppTemplates.Invoke(new()
///     {
///         NameRegex = "^my_AppTemplate",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["impAppTemplateId1"] = ids.Apply(getAppTemplatesResult => getAppTemplatesResult.Templates[0]?.Id),
///         ["impAppTemplateId2"] = nameRegex.Apply(getAppTemplatesResult => getAppTemplatesResult.Templates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/imp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := imp.GetAppTemplates(ctx, &imp.GetAppTemplatesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("impAppTemplateId1", ids.Templates[0].Id)
/// 		nameRegex, err := imp.GetAppTemplates(ctx, &imp.GetAppTemplatesArgs{
/// 			NameRegex: pulumi.StringRef("^my_AppTemplate"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("impAppTemplateId2", nameRegex.Templates[0].Id)
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
/// import com.pulumi.alicloud.imp.ImpFunctions;
/// import com.pulumi.alicloud.imp.inputs.GetAppTemplatesArgs;
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
///         final var ids = ImpFunctions.getAppTemplates(GetAppTemplatesArgs.builder()
///             .build());
///
///         ctx.export("impAppTemplateId1", ids.templates()[0].id());
///         final var nameRegex = ImpFunctions.getAppTemplates(GetAppTemplatesArgs.builder()
///             .nameRegex("^my_AppTemplate")
///             .build());
///
///         ctx.export("impAppTemplateId2", nameRegex.templates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:imp:getAppTemplates
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:imp:getAppTemplates
///       arguments:
///         nameRegex: ^my_AppTemplate
/// outputs:
///   impAppTemplateId1: ${ids.templates[0].id}
///   impAppTemplateId2: ${nameRegex.templates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imp_get_app_templates_get_app_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppTemplatesResult> getAppTemplates(
  GetAppTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:imp/getAppTemplates:getAppTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppTemplatesResult.fromMap(result);
}
