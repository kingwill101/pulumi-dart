import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_portfolio_association_args.dart';
import 'principal_portfolio_association_state.dart';

/// Provides a Service Catalog Principal Portfolio Association resource.
///
/// Principal portfolio association.
///
/// For information about Service Catalog Principal Portfolio Association and how to use it, see [What is Principal Portfolio Association](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-associateprincipalwithportfolio).
///
/// &gt; **NOTE:** Available since v1.230.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultDaXVxI = new alicloud.servicecatalog.Portfolio("defaultDaXVxI", {
///     providerName: name,
///     description: "desc",
///     portfolioName: name,
/// });
/// const default48JHf4 = new alicloud.ram.Role("default48JHf4", {
///     name: name,
///     document: `    {
///         \\"Statement\\": [
///         {
///             \\"Action\\": \\"sts:AssumeRole\\",
///             \\"Effect\\": \\"Allow\\",
///             \\"Principal\\": {
///             \\"Service\\": [
///                 \\"emr.aliyuncs.com\\",
///                 \\"ecs.aliyuncs.com\\"
///             ]
///             }
///         }
///         ],
///         \\"Version\\": \\"1\\"
///     }
/// `,
///     description: "this is a role test.",
///     force: true,
/// });
/// const _default = new alicloud.servicecatalog.PrincipalPortfolioAssociation("default", {
///     principalId: default48JHf4.id,
///     portfolioId: defaultDaXVxI.id,
///     principalType: "RamRole",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_da_x_vx_i = alicloud.servicecatalog.Portfolio("defaultDaXVxI",
///     provider_name=name,
///     description="desc",
///     portfolio_name=name)
/// default48_j_hf4 = alicloud.ram.Role("default48JHf4",
///     name=name,
///     document="""    {
///         \"Statement\": [
///         {
///             \"Action\": \"sts:AssumeRole\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///             \"Service\": [
///                 \"emr.aliyuncs.com\",
///                 \"ecs.aliyuncs.com\"
///             ]
///             }
///         }
///         ],
///         \"Version\": \"1\"
///     }
/// """,
///     description="this is a role test.",
///     force=True)
/// default = alicloud.servicecatalog.PrincipalPortfolioAssociation("default",
///     principal_id=default48_j_hf4.id,
///     portfolio_id=default_da_x_vx_i.id,
///     principal_type="RamRole")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var defaultDaXVxI = new AliCloud.ServiceCatalog.Portfolio("defaultDaXVxI", new()
///     {
///         ProviderName = name,
///         Description = "desc",
///         PortfolioName = name,
///     });
///
///     var default48JHf4 = new AliCloud.Ram.Role("default48JHf4", new()
///     {
///         Name = name,
///         Document = @"    {
///         \""Statement\"": [
///         {
///             \""Action\"": \""sts:AssumeRole\"",
///             \""Effect\"": \""Allow\"",
///             \""Principal\"": {
///             \""Service\"": [
///                 \""emr.aliyuncs.com\"",
///                 \""ecs.aliyuncs.com\""
///             ]
///             }
///         }
///         ],
///         \""Version\"": \""1\""
///     }
/// ",
///         Description = "this is a role test.",
///         Force = true,
///     });
///
///     var @default = new AliCloud.ServiceCatalog.PrincipalPortfolioAssociation("default", new()
///     {
///         PrincipalId = default48JHf4.Id,
///         PortfolioId = defaultDaXVxI.Id,
///         PrincipalType = "RamRole",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultDaXVxI, err := servicecatalog.NewPortfolio(ctx, "defaultDaXVxI", &servicecatalog.PortfolioArgs{
/// 			ProviderName:  pulumi.String(name),
/// 			Description:   pulumi.String("desc"),
/// 			PortfolioName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default48JHf4, err := ram.NewRole(ctx, "default48JHf4", &ram.RoleArgs{
/// 			Name: pulumi.String(name),
/// 			Document: pulumi.String(`    {
///         \"Statement\": [
///         {
///             \"Action\": \"sts:AssumeRole\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///             \"Service\": [
///                 \"emr.aliyuncs.com\",
///                 \"ecs.aliyuncs.com\"
///             ]
///             }
///         }
///         ],
///         \"Version\": \"1\"
///     }
/// `),
/// 			Description: pulumi.String("this is a role test."),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicecatalog.NewPrincipalPortfolioAssociation(ctx, "default", &servicecatalog.PrincipalPortfolioAssociationArgs{
/// 			PrincipalId:   default48JHf4.ID(),
/// 			PortfolioId:   defaultDaXVxI.ID(),
/// 			PrincipalType: pulumi.String("RamRole"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
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
/// import com.pulumi.alicloud.servicecatalog.Portfolio;
/// import com.pulumi.alicloud.servicecatalog.PortfolioArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.servicecatalog.PrincipalPortfolioAssociation;
/// import com.pulumi.alicloud.servicecatalog.PrincipalPortfolioAssociationArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var defaultDaXVxI = new Portfolio("defaultDaXVxI", PortfolioArgs.builder()
///             .providerName(name)
///             .description("desc")
///             .portfolioName(name)
///             .build());
///
///         var default48JHf4 = new Role("default48JHf4", RoleArgs.builder()
///             .name(name)
///             .document("""
///     {
///         \"Statement\": [
///         {
///             \"Action\": \"sts:AssumeRole\",
///             \"Effect\": \"Allow\",
///             \"Principal\": {
///             \"Service\": [
///                 \"emr.aliyuncs.com\",
///                 \"ecs.aliyuncs.com\"
///             ]
///             }
///         }
///         ],
///         \"Version\": \"1\"
///     }
///             """)
///             .description("this is a role test.")
///             .force(true)
///             .build());
///
///         var default_ = new PrincipalPortfolioAssociation("default", PrincipalPortfolioAssociationArgs.builder()
///             .principalId(default48JHf4.id())
///             .portfolioId(defaultDaXVxI.id())
///             .principalType("RamRole")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultDaXVxI:
///     type: alicloud:servicecatalog:Portfolio
///     properties:
///       providerName: ${name}
///       description: desc
///       portfolioName: ${name}
///   default48JHf4:
///     type: alicloud:ram:Role
///     properties:
///       name: ${name}
///       document: |2
///             {
///                 \"Statement\": [
///                 {
///                     \"Action\": \"sts:AssumeRole\",
///                     \"Effect\": \"Allow\",
///                     \"Principal\": {
///                     \"Service\": [
///                         \"emr.aliyuncs.com\",
///                         \"ecs.aliyuncs.com\"
///                     ]
///                     }
///                 }
///                 ],
///                 \"Version\": \"1\"
///             }
///       description: this is a role test.
///       force: true
///   default:
///     type: alicloud:servicecatalog:PrincipalPortfolioAssociation
///     properties:
///       principalId: ${default48JHf4.id}
///       portfolioId: ${defaultDaXVxI.id}
///       principalType: RamRole
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Catalog Principal Portfolio Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation example <principal_id>:<principal_type>:<portfolio_id>
/// ```
class PrincipalPortfolioAssociation extends pulumi.CustomResource {
  /// Product Portfolio ID
  late final pulumi.Output<String> portfolioId;

  /// RAM entity ID
  late final pulumi.Output<String> principalId;

  /// RAM entity type
  late final pulumi.Output<String> principalType;

  /// Creates a new [PrincipalPortfolioAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrincipalPortfolioAssociation]. {@macro pulumi_servicecatalog_principal_portfolio_association_principal_portfolio_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrincipalPortfolioAssociation(
    String name, {
    PrincipalPortfolioAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    portfolioId = registerOutput<String>('portfolioId');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
  }

  /// Gets an existing [PrincipalPortfolioAssociation] resource's state with the given [name] and [id].
  static PrincipalPortfolioAssociation get(
    String name,
    pulumi.Input<String> id, {
    PrincipalPortfolioAssociationState? state,
  }) {
    return PrincipalPortfolioAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrincipalPortfolioAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    portfolioId = registerOutput<String>('portfolioId');
    principalId = registerOutput<String>('principalId');
    principalType = registerOutput<String>('principalType');
  }
}
