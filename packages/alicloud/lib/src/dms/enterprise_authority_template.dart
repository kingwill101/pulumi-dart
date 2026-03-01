import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_authority_template_args.dart';

/// Provides a DMS Enterprise Authority Template resource.
///
/// For information about DMS Enterprise Authority Template and how to use it, see [What is Authority Template](https://www.alibabacloud.com/help/en/dms/developer-reference/api-dms-enterprise-2018-11-01-createauthoritytemplate).
///
/// > **NOTE:** Available since v1.212.0.
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
/// const _default = alicloud.dms.getUserTenants({
///     status: "ACTIVE",
/// });
/// const defaultEnterpriseAuthorityTemplate = new alicloud.dms.EnterpriseAuthorityTemplate("default", {
///     tid: _default.then(_default => _default.ids?.[0]),
///     authorityTemplateName: name,
///     description: name,
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
/// default = alicloud.dms.get_user_tenants(status="ACTIVE")
/// default_enterprise_authority_template = alicloud.dms.EnterpriseAuthorityTemplate("default",
///     tid=default.ids[0],
///     authority_template_name=name,
///     description=name)
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
///     var @default = AliCloud.Dms.GetUserTenants.Invoke(new()
///     {
///         Status = "ACTIVE",
///     });
///
///     var defaultEnterpriseAuthorityTemplate = new AliCloud.Dms.EnterpriseAuthorityTemplate("default", new()
///     {
///         Tid = @default.Apply(@default => @default.Apply(getUserTenantsResult => getUserTenantsResult.Ids[0])),
///         AuthorityTemplateName = name,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
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
/// 		_default, err := dms.GetUserTenants(ctx, &dms.GetUserTenantsArgs{
/// 			Status: pulumi.StringRef("ACTIVE"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dms.NewEnterpriseAuthorityTemplate(ctx, "default", &dms.EnterpriseAuthorityTemplateArgs{
/// 			Tid:                   pulumi.String(_default.Ids[0]),
/// 			AuthorityTemplateName: pulumi.String(name),
/// 			Description:           pulumi.String(name),
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
/// import com.pulumi.alicloud.dms.DmsFunctions;
/// import com.pulumi.alicloud.dms.inputs.GetUserTenantsArgs;
/// import com.pulumi.alicloud.dms.EnterpriseAuthorityTemplate;
/// import com.pulumi.alicloud.dms.EnterpriseAuthorityTemplateArgs;
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
///         final var default = DmsFunctions.getUserTenants(GetUserTenantsArgs.builder()
///             .status("ACTIVE")
///             .build());
///
///         var defaultEnterpriseAuthorityTemplate = new EnterpriseAuthorityTemplate("defaultEnterpriseAuthorityTemplate", EnterpriseAuthorityTemplateArgs.builder()
///             .tid(default_.ids()[0])
///             .authorityTemplateName(name)
///             .description(name)
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
///   defaultEnterpriseAuthorityTemplate:
///     type: alicloud:dms:EnterpriseAuthorityTemplate
///     name: default
///     properties:
///       tid: ${default.ids[0]}
///       authorityTemplateName: ${name}
///       description: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:dms:getUserTenants
///       arguments:
///         status: ACTIVE
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DMS Enterprise Authority Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/enterpriseAuthorityTemplate:EnterpriseAuthorityTemplate example <tid>:<authority_template_id>
/// ```
class EnterpriseAuthorityTemplate extends pulumi.CustomResource {
  /// Permission template ID.
  late final pulumi.Output<int> authorityTemplateId;
  /// Permission Template name.
  late final pulumi.Output<String> authorityTemplateName;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// Permission template description information.
  late final pulumi.Output<String?> description;
  /// Tenant ID.
  late final pulumi.Output<int> tid;

  /// Creates a new [EnterpriseAuthorityTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseAuthorityTemplate]. {@macro pulumi_dms_enterprise_authority_template_enterprise_authority_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseAuthorityTemplate(
    String name, {
    EnterpriseAuthorityTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseAuthorityTemplate:EnterpriseAuthorityTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorityTemplateId = registerOutput<int>('authorityTemplateId');
    this.authorityTemplateName = registerOutput<String>('authorityTemplateName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.tid = registerOutput<int>('tid');
  }
}
