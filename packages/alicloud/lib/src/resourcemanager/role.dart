import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';

/// Provides a Resource Manager role resource. Members are resource containers in the resource directory, which can physically isolate resources to form an independent resource grouping unit. You can create members in the resource folder to manage them in a unified manner.
/// For information about Resource Manager role and how to use it, see [What is Resource Manager role](https://www.alibabacloud.com/help/en/doc-detail/111231.htm).
///
/// > **NOTE:** Available since v1.82.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.resourcemanager.Role("example", {
///     roleName: name,
///     assumeRolePolicyDocument: _default.then(_default => `     {
///           \"Statement\": [
///                {
///                     \"Action\": \"sts:AssumeRole\",
///                     \"Effect\": \"Allow\",
///                     \"Principal\": {
///                         \"RAM\":[
///                                 \"acs:ram::${_default.id}:root\"
///                         ]
///                     }
///                 }
///           ],
///           \"Version\": \"1\"
///      }
/// `),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.get_account()
/// example = alicloud.resourcemanager.Role("example",
///     role_name=name,
///     assume_role_policy_document=f"""     {{
///           \"Statement\": [
///                {{
///                     \"Action\": \"sts:AssumeRole\",
///                     \"Effect\": \"Allow\",
///                     \"Principal\": {{
///                         \"RAM\":[
///                                 \"acs:ram::{default.id}:root\"
///                         ]
///                     }}
///                 }}
///           ],
///           \"Version\": \"1\"
///      }}
/// """)
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.ResourceManager.Role("example", new()
///     {
///         RoleName = name,
///         AssumeRolePolicyDocument = @default.Apply(@default => @$"     {{
///           \""Statement\"": [
///                {{
///                     \""Action\"": \""sts:AssumeRole\"",
///                     \""Effect\"": \""Allow\"",
///                     \""Principal\"": {{
///                         \""RAM\"":[
///                                 \""acs:ram::{@default.Apply(getAccountResult => getAccountResult.Id)}:root\""
///                         ]
///                     }}
///                 }}
///           ],
///           \""Version\"": \""1\""
///      }}
/// "),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewRole(ctx, "example", &resourcemanager.RoleArgs{
/// 			RoleName: pulumi.String(name),
/// 			AssumeRolePolicyDocument: pulumi.Sprintf(`     {
///           \"Statement\": [
///                {
///                     \"Action\": \"sts:AssumeRole\",
///                     \"Effect\": \"Allow\",
///                     \"Principal\": {
///                         \"RAM\":[
///                                 \"acs:ram::%v:root\"
///                         ]
///                     }
///                 }
///           ],
///           \"Version\": \"1\"
///      }
/// `, _default.Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.resourcemanager.Role;
/// import com.pulumi.alicloud.resourcemanager.RoleArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Role("example", RoleArgs.builder()
///             .roleName(name)
///             .assumeRolePolicyDocument("""
///      {
///           \"Statement\": [
///                {
///                     \"Action\": \"sts:AssumeRole\",
///                     \"Effect\": \"Allow\",
///                     \"Principal\": {
///                         \"RAM\":[
///                                 \"acs:ram::%s:root\"
///                         ]
///                     }
///                 }
///           ],
///           \"Version\": \"1\"
///      }
/// ", default_.id()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   example:
///     type: alicloud:resourcemanager:Role
///     properties:
///       roleName: ${name}
///       assumeRolePolicyDocument: |2
///              {
///                   \"Statement\": [
///                        {
///                             \"Action\": \"sts:AssumeRole\",
///                             \"Effect\": \"Allow\",
///                             \"Principal\": {
///                                 \"RAM\":[
///                                         \"acs:ram::${default.id}:root\"
///                                 ]
///                             }
///                         }
///                   ],
///                   \"Version\": \"1\"
///              }
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager can be imported using the id or role_name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/role:Role example testrd
/// ```
class Role extends pulumi.CustomResource {
  /// The resource descriptor of the role.
  late final pulumi.Output<String> arn;
  /// The content of the permissions strategy that plays a role.
  late final pulumi.Output<String> assumeRolePolicyDocument;
  /// The description of the Resource Manager role.
  late final pulumi.Output<String?> description;
  /// Role maximum session time. Valid values: [3600-43200]. Default to `3600`.
  late final pulumi.Output<int?> maxSessionDuration;
  /// This ID of Resource Manager role. The value is set to `role_name`.
  late final pulumi.Output<String> roleId;
  /// Role Name. The length is 1 ~ 64 characters, which can include English letters, numbers, dots "." and dashes "-".
  late final pulumi.Output<String> roleName;
  /// Role update time.
  late final pulumi.Output<String> updateDate;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_resourcemanager_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assumeRolePolicyDocument = registerOutput<String>('assumeRolePolicyDocument');
    this.description = registerOutput<String?>('description');
    this.maxSessionDuration = registerOutput<int?>('maxSessionDuration');
    this.roleId = registerOutput<String>('roleId');
    this.roleName = registerOutput<String>('roleName');
    this.updateDate = registerOutput<String>('updateDate');
  }
}
