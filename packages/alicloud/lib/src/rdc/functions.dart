import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizations_args.dart';
import 'get_organizations_result.dart';

/// This data source provides the Rdc Organizations of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.137.0.
///
/// > **DEPRECATED:** This data source has been deprecated from version `1.238.0`.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-testAccOrganizations-Organizations";
/// const _default = new alicloud.rdc.Organization("default", {
///     organizationName: name,
///     source: name,
/// });
/// const ids = alicloud.rdc.getOrganizationsOutput({
///     ids: [_default.id],
/// });
/// export const rdcOrganizationId1 = ids.apply(ids => ids.id);
/// const nameRegex = alicloud.rdc.getOrganizations({
///     nameRegex: "^my-Organization",
/// });
/// export const rdcOrganizationId2 = nameRegex.then(nameRegex => nameRegex.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testAccOrganizations-Organizations"
/// default = alicloud.rdc.Organization("default",
///     organization_name=name,
///     source=name)
/// ids = alicloud.rdc.get_organizations_output(ids=[default.id])
/// pulumi.export("rdcOrganizationId1", ids.id)
/// name_regex = alicloud.rdc.get_organizations(name_regex="^my-Organization")
/// pulumi.export("rdcOrganizationId2", name_regex.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-testAccOrganizations-Organizations";
///     var @default = new AliCloud.Rdc.Organization("default", new()
///     {
///         OrganizationName = name,
///         Source = name,
///     });
///
///     var ids = AliCloud.Rdc.GetOrganizations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     var nameRegex = AliCloud.Rdc.GetOrganizations.Invoke(new()
///     {
///         NameRegex = "^my-Organization",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["rdcOrganizationId1"] = ids.Apply(getOrganizationsResult => getOrganizationsResult.Id),
///         ["rdcOrganizationId2"] = nameRegex.Apply(getOrganizationsResult => getOrganizationsResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rdc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-testAccOrganizations-Organizations"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := rdc.NewOrganization(ctx, "default", &rdc.OrganizationArgs{
/// 			OrganizationName: pulumi.String(name),
/// 			Source:           pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := rdc.GetOrganizationsOutput(ctx, rdc.GetOrganizationsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("rdcOrganizationId1", ids.ApplyT(func(ids rdc.GetOrganizationsResult) (*string, error) {
/// 			return &ids.Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		nameRegex, err := rdc.GetOrganizations(ctx, &rdc.GetOrganizationsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Organization"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rdcOrganizationId2", nameRegex.Id)
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
/// import com.pulumi.alicloud.rdc.Organization;
/// import com.pulumi.alicloud.rdc.OrganizationArgs;
/// import com.pulumi.alicloud.rdc.RdcFunctions;
/// import com.pulumi.alicloud.rdc.inputs.GetOrganizationsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-testAccOrganizations-Organizations");
///         var default_ = new Organization("default", OrganizationArgs.builder()
///             .organizationName(name)
///             .source(name)
///             .build());
///
///         final var ids = RdcFunctions.getOrganizations(GetOrganizationsArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("rdcOrganizationId1", ids.applyValue(_ids -> _ids.id()));
///         final var nameRegex = RdcFunctions.getOrganizations(GetOrganizationsArgs.builder()
///             .nameRegex("^my-Organization")
///             .build());
///
///         ctx.export("rdcOrganizationId2", nameRegex.id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testAccOrganizations-Organizations
/// resources:
///   default:
///     type: alicloud:rdc:Organization
///     properties:
///       organizationName: ${name}
///       source: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:rdc:getOrganizations
///       arguments:
///         ids:
///           - ${default.id}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:rdc:getOrganizations
///       arguments:
///         nameRegex: ^my-Organization
/// outputs:
///   rdcOrganizationId1: ${ids.id}
///   rdcOrganizationId2: ${nameRegex.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rdc_get_organizations_get_organizations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationsResult> getOrganizations(
  GetOrganizationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rdc/getOrganizations:getOrganizations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationsResult.fromMap(result);
}
