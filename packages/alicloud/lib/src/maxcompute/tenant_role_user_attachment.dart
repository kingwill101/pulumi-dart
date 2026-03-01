import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_role_user_attachment_args.dart';

/// Provides a Max Compute Tenant Role User Attachment resource.
///
///
///
/// For information about Max Compute Tenant Role User Attachment and how to use it, see [What is Tenant Role User Attachment](https://next.api.alibabacloud.com/document/MaxCompute/2022-01-04/UpdateTenantUserRoles).
///
/// > **NOTE:** Available since v1.270.0.
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
/// const default0 = new alicloud.maxcompute.TenantRoleUserAttachment("default0", {
///     accountId: "p4_200053869413670560",
///     tenantRole: "admin",
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
/// default0 = alicloud.maxcompute.TenantRoleUserAttachment("default0",
///     account_id="p4_200053869413670560",
///     tenant_role="admin")
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
///     var default0 = new AliCloud.MaxCompute.TenantRoleUserAttachment("default0", new()
///     {
///         AccountId = "p4_200053869413670560",
///         TenantRole = "admin",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/maxcompute"
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
/// 		_, err := maxcompute.NewTenantRoleUserAttachment(ctx, "default0", &maxcompute.TenantRoleUserAttachmentArgs{
/// 			AccountId:  pulumi.String("p4_200053869413670560"),
/// 			TenantRole: pulumi.String("admin"),
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
/// import com.pulumi.alicloud.maxcompute.TenantRoleUserAttachment;
/// import com.pulumi.alicloud.maxcompute.TenantRoleUserAttachmentArgs;
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
///         var default0 = new TenantRoleUserAttachment("default0", TenantRoleUserAttachmentArgs.builder()
///             .accountId("p4_200053869413670560")
///             .tenantRole("admin")
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
///   default0:
///     type: alicloud:maxcompute:TenantRoleUserAttachment
///     properties:
///       accountId: p4_200053869413670560
///       tenantRole: admin
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Max Compute Tenant Role User Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/tenantRoleUserAttachment:TenantRoleUserAttachment example <account_id>:<tenant_role>
/// ```
class TenantRoleUserAttachment extends pulumi.CustomResource {
  /// Account UID
  ///
  /// 1. If the user is a primary account, the AccountId format is UID.
  /// Example: 200231703336555555
  ///
  /// 2. If the user is a RAM user, the AccountId format is p4_UID.
  /// Example: p4_200531704446555555
  ///
  /// 3. If the user is a RAM role, the AccountId format is v4_UID.
  /// Example: v4_300007628597555555
  late final pulumi.Output<String> accountId;
  /// Tenant role. By default, admin and super_administrator are available. You can add more roles in the console.
  late final pulumi.Output<String> tenantRole;

  /// Creates a new [TenantRoleUserAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantRoleUserAttachment]. {@macro pulumi_maxcompute_tenant_role_user_attachment_tenant_role_user_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantRoleUserAttachment(
    String name, {
    TenantRoleUserAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:maxcompute/tenantRoleUserAttachment:TenantRoleUserAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.tenantRole = registerOutput<String>('tenantRole');
  }
}
