import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_attachment_args.dart';

/// Provides a RAM User Group Attachment resource.
///
///
///
/// For information about RAM User Group Attachment and how to use it, see [What is User Group Attachment](https://next.api.alibabacloud.com/document/Ram/2015-05-01/AddUserToGroup).
///
/// > **NOTE:** Available since v1.245.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultUser = new alicloud.ram.User("default", {
///     name: `terraform-example-${_default.result}`,
///     displayName: `terraform-example-${_default.result}`,
/// });
/// const defaultGroup = new alicloud.ram.Group("default", {name: `terraform-example-${_default.result}`});
/// const defaultUserGroupAttachment = new alicloud.ram.UserGroupAttachment("default", {
///     groupName: defaultGroup.id,
///     userName: defaultUser.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_user = alicloud.ram.User("default",
///     name=f"terraform-example-{default['result']}",
///     display_name=f"terraform-example-{default['result']}")
/// default_group = alicloud.ram.Group("default", name=f"terraform-example-{default['result']}")
/// default_user_group_attachment = alicloud.ram.UserGroupAttachment("default",
///     group_name=default_group.id,
///     user_name=default_user.name)
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultUser = new AliCloud.Ram.User("default", new()
///     {
///         Name = $"terraform-example-{@default.Result}",
///         DisplayName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultGroup = new AliCloud.Ram.Group("default", new()
///     {
///         Name = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultUserGroupAttachment = new AliCloud.Ram.UserGroupAttachment("default", new()
///     {
///         GroupName = defaultGroup.Id,
///         UserName = defaultUser.Name,
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUser, err := ram.NewUser(ctx, "default", &ram.UserArgs{
/// 			Name:        pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			DisplayName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGroup, err := ram.NewGroup(ctx, "default", &ram.GroupArgs{
/// 			Name: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewUserGroupAttachment(ctx, "default", &ram.UserGroupAttachmentArgs{
/// 			GroupName: defaultGroup.ID(),
/// 			UserName:  defaultUser.Name,
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.ram.Group;
/// import com.pulumi.alicloud.ram.GroupArgs;
/// import com.pulumi.alicloud.ram.UserGroupAttachment;
/// import com.pulumi.alicloud.ram.UserGroupAttachmentArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultUser = new User("defaultUser", UserArgs.builder()
///             .name(String.format("terraform-example-%s", default_.result()))
///             .displayName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultGroup = new Group("defaultGroup", GroupArgs.builder()
///             .name(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultUserGroupAttachment = new UserGroupAttachment("defaultUserGroupAttachment", UserGroupAttachmentArgs.builder()
///             .groupName(defaultGroup.id())
///             .userName(defaultUser.name())
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
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultUser:
///     type: alicloud:ram:User
///     name: default
///     properties:
///       name: terraform-example-${default.result}
///       displayName: terraform-example-${default.result}
///   defaultGroup:
///     type: alicloud:ram:Group
///     name: default
///     properties:
///       name: terraform-example-${default.result}
///   defaultUserGroupAttachment:
///     type: alicloud:ram:UserGroupAttachment
///     name: default
///     properties:
///       groupName: ${defaultGroup.id}
///       userName: ${defaultUser.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM User Group Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/userGroupAttachment:UserGroupAttachment example <group_name>:<user_name>
/// ```
class UserGroupAttachment extends pulumi.CustomResource {
  /// The name of group.
  late final pulumi.Output<String> groupName;
  /// The name of user.
  late final pulumi.Output<String> userName;

  /// Creates a new [UserGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroupAttachment]. {@macro pulumi_ram_user_group_attachment_user_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroupAttachment(
    String name, {
    UserGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/userGroupAttachment:UserGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupName = registerOutput<String>('groupName');
    this.userName = registerOutput<String>('userName');
  }
}
