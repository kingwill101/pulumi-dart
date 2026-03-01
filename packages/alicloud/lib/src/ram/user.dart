import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// Provides a RAM User resource.
///
/// For information about RAM User and how to use it, see [What is User](https://www.alibabacloud.com/help/en/ram/developer-reference/api-ram-2015-05-01-createuser).
///
/// > **NOTE:** When you want to destroy this resource forcefully(means release all the relationships associated with it automatically and then destroy it) without set `force`  with `true` at beginning, you need add `force = true` to configuration file and run `pulumi preview`, then you can delete resource forcefully.
///
/// > **NOTE:** Available since v1.0.0.
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
/// // Create a new RAM user.
/// const user = new alicloud.ram.User("user", {
///     name: `terraform-example-${_default.result}`,
///     displayName: "user_display_name",
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
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
/// # Create a new RAM user.
/// user = alicloud.ram.User("user",
///     name=f"terraform-example-{default['result']}",
///     display_name="user_display_name",
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo")
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
///     // Create a new RAM user.
///     var user = new AliCloud.Ram.User("user", new()
///     {
///         Name = $"terraform-example-{@default.Result}",
///         DisplayName = "user_display_name",
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
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
/// 		// Create a new RAM user.
/// 		_, err = ram.NewUser(ctx, "user", &ram.UserArgs{
/// 			Name:        pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			DisplayName: pulumi.String("user_display_name"),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
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
///         // Create a new RAM user.
///         var user = new User("user", UserArgs.builder()
///             .name(String.format("terraform-example-%s", default_.result()))
///             .displayName("user_display_name")
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
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
///   # Create a new RAM user.
///   user:
///     type: alicloud:ram:User
///     properties:
///       name: terraform-example-${default.result}
///       displayName: user_display_name
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/user:User example 123456789xxx
/// ```
class User extends pulumi.CustomResource {
  /// Comment of the RAM user. This parameter can have a string of 1 to 128 characters.
  late final pulumi.Output<String?> comments;
  /// Name of the RAM user which for display. This name can have a string of 1 to 128 characters or Chinese characters, must contain only alphanumeric characters or Chinese characters or hyphens, such as "-",".", and must not end with a hyphen.
  late final pulumi.Output<String?> displayName;
  /// Email of the RAM user.
  late final pulumi.Output<String?> email;
  /// This parameter is used for resource destroy. Default value: `false`.
  late final pulumi.Output<bool?> force;
  /// Phone number of the RAM user. This number must contain an international area code prefix, just look like this: 86-18600008888.
  late final pulumi.Output<String?> mobile;
  /// Name of the RAM user. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen.
  late final pulumi.Output<String> name;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_ram_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comments = registerOutput<String?>('comments');
    this.displayName = registerOutput<String?>('displayName');
    this.email = registerOutput<String?>('email');
    this.force = registerOutput<bool?>('force');
    this.mobile = registerOutput<String?>('mobile');
    this.name = registerOutput<String>('name');
  }
}
