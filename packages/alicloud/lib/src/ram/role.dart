import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';

/// Provides a RAM Role resource.
///
///
///
/// For information about RAM Role and how to use it, see [What is Role](https://www.alibabacloud.com/help/en/ram/developer-reference/api-ram-2015-05-01-createrole).
///
/// > **NOTE:** Available since v1.0.0.
///
/// > **NOTE:** When you want to destroy this resource forcefully(means remove all the relationships associated with it automatically and then destroy it) without set `force`  with `true` at beginning, you need add `force = true` to configuration file and run `pulumi preview`, then you can delete resource forcefully.
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
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     roleName: `terraform-example-${_default.result}`,
///     assumeRolePolicyDocument: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": \\"sts:AssumeRole\\",
///         \\"Effect\\": \\"Allow\\",
///         \\"Principal\\": {
///           \\"Service\\": [
///             \\"apigateway.aliyuncs.com\\",
///             \\"ecs.aliyuncs.com\\"
///           ]
///         }
///       }
///     ],
///     \\"Version\\": \\"1\\"
///   }
/// `,
///     description: "this is a role test.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_role = alicloud.ram.Role("default",
///     role_name=f"terraform-example-{default['result']}",
///     assume_role_policy_document="""  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"apigateway.aliyuncs.com\",
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// """,
///     description="this is a role test.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         RoleName = $"terraform-example-{@default.Result}",
///         AssumeRolePolicyDocument = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": \""sts:AssumeRole\"",
///         \""Effect\"": \""Allow\"",
///         \""Principal\"": {
///           \""Service\"": [
///             \""apigateway.aliyuncs.com\"",
///             \""ecs.aliyuncs.com\""
///           ]
///         }
///       }
///     ],
///     \""Version\"": \""1\""
///   }
/// ",
///         Description = "this is a role test.",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			RoleName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			AssumeRolePolicyDocument: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"apigateway.aliyuncs.com\",
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
/// `),
/// 			Description: pulumi.String("this is a role test."),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .roleName(String.format("terraform-example-%s", default_.result()))
///             .assumeRolePolicyDocument("""
///   {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"apigateway.aliyuncs.com\",
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///             """)
///             .description("this is a role test.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       roleName: terraform-example-${default.result}
///       assumeRolePolicyDocument: |2
///           {
///             \"Statement\": [
///               {
///                 \"Action\": \"sts:AssumeRole\",
///                 \"Effect\": \"Allow\",
///                 \"Principal\": {
///                   \"Service\": [
///                     \"apigateway.aliyuncs.com\",
///                     \"ecs.aliyuncs.com\"
///                   ]
///                 }
///               }
///             ],
///             \"Version\": \"1\"
///           }
///       description: this is a role test.
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Role can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/role:Role example <id>
/// ```
class Role extends pulumi.CustomResource {
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  late final pulumi.Output<String> arn;
  /// The trust policy that specifies one or more trusted entities to assume the RAM role. The trusted entities can be Alibaba Cloud accounts, Alibaba Cloud services, or identity providers (IdPs).
  late final pulumi.Output<String> assumeRolePolicyDocument;
  /// (Available since v1.252.0) The time when the RAM role was created.
  late final pulumi.Output<String> createTime;
  /// The description of the RAM role.
  late final pulumi.Output<String?> description;
  /// Field `document` has been deprecated from provider version 1.252.0. New field `assume_role_policy_document` instead.
  late final pulumi.Output<String> document;
  /// Specifies whether to force delete the Role. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> force;
  /// The maximum session time of the RAM role. Default value: `3600`. Valid values: `3600` to `43200`.
  late final pulumi.Output<int> maxSessionDuration;
  /// Field `name` has been deprecated from provider version 1.252.0. New field `role_name` instead.
  late final pulumi.Output<String> name;
  /// Field `ram_users` has been deprecated from provider version 1.49.0. New field `document` instead.
  late final pulumi.Output<List<String>> ramUsers;
  /// The ID of the RAM role.
  late final pulumi.Output<String> roleId;
  /// The name of the RAM role.
  late final pulumi.Output<String> roleName;
  /// Field `services` has been deprecated from provider version 1.49.0. New field `document` instead.
  late final pulumi.Output<List<String>> services;
  /// The list of tags for the role.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  late final pulumi.Output<String?> version;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_ram_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assumeRolePolicyDocument = registerOutput<String>('assumeRolePolicyDocument');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.document = registerOutput<String>('document');
    this.force = registerOutput<bool?>('force');
    this.maxSessionDuration = registerOutput<int>('maxSessionDuration');
    this.name = registerOutput<String>('name');
    this.ramUsers = registerOutput<List<String>>('ramUsers');
    this.roleId = registerOutput<String>('roleId');
    this.roleName = registerOutput<String>('roleName');
    this.services = registerOutput<List<String>>('services');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.version = registerOutput<String?>('version');
  }
}
