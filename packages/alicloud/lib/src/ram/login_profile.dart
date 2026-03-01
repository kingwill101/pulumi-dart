import 'package:pulumi/pulumi.dart' as pulumi;
import 'login_profile_args.dart';

/// Provides a RAM Login Profile resource.
///
///
///
/// For information about RAM Login Profile and how to use it, see [What is Login Profile](https://www.alibabacloud.com/help/en/ram/developer-reference/api-ram-2015-05-01-createloginprofile).
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
///
/// const user = new alicloud.ram.User("user", {
///     name: "terraform_example",
///     displayName: "terraform_example",
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "terraform_example",
///     force: true,
/// });
/// const profile = new alicloud.ram.LoginProfile("profile", {
///     userName: user.name,
///     password: "Example_1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// user = alicloud.ram.User("user",
///     name="terraform_example",
///     display_name="terraform_example",
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="terraform_example",
///     force=True)
/// profile = alicloud.ram.LoginProfile("profile",
///     user_name=user.name,
///     password="Example_1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new AliCloud.Ram.User("user", new()
///     {
///         Name = "terraform_example",
///         DisplayName = "terraform_example",
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "terraform_example",
///         Force = true,
///     });
///
///     var profile = new AliCloud.Ram.LoginProfile("profile", new()
///     {
///         UserName = user.Name,
///         Password = "Example_1234",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		user, err := ram.NewUser(ctx, "user", &ram.UserArgs{
/// 			Name:        pulumi.String("terraform_example"),
/// 			DisplayName: pulumi.String("terraform_example"),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("terraform_example"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewLoginProfile(ctx, "profile", &ram.LoginProfileArgs{
/// 			UserName: user.Name,
/// 			Password: pulumi.String("Example_1234"),
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
/// import com.pulumi.alicloud.ram.User;
/// import com.pulumi.alicloud.ram.UserArgs;
/// import com.pulumi.alicloud.ram.LoginProfile;
/// import com.pulumi.alicloud.ram.LoginProfileArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .name("terraform_example")
///             .displayName("terraform_example")
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("terraform_example")
///             .force(true)
///             .build());
///
///         var profile = new LoginProfile("profile", LoginProfileArgs.builder()
///             .userName(user.name())
///             .password("Example_1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   user:
///     type: alicloud:ram:User
///     properties:
///       name: terraform_example
///       displayName: terraform_example
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: terraform_example
///       force: true
///   profile:
///     type: alicloud:ram:LoginProfile
///     properties:
///       userName: ${user.name}
///       password: Example_1234
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RAM Login Profile can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ram/loginProfile:LoginProfile example <id>
/// ```
class LoginProfile extends pulumi.CustomResource {
  /// Creation time.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to forcefully enable multi-factor authentication (MFA) for the RAM user. Valid values:
  /// - true: forcefully enables MFA for the RAM user. The RAM user must bind an MFA device upon the next logon.
  /// - false (default): does not forcefully enable MFA for the RAM user.
  late final pulumi.Output<bool> mfaBindRequired;
  /// The password must meet the Password strength requirements. For more information about password strength setting requirements, see [GetPasswordPolicy](https://help.aliyun.com/document_detail/2337691.html).
  late final pulumi.Output<String> password;
  /// Whether the user must reset the password at the next logon. Value:
  /// - true
  /// - false (default)
  late final pulumi.Output<bool?> passwordResetRequired;
  /// The user name.
  late final pulumi.Output<String> userName;

  /// Creates a new [LoginProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoginProfile]. {@macro pulumi_ram_login_profile_login_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoginProfile(
    String name, {
    LoginProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/loginProfile:LoginProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.mfaBindRequired = registerOutput<bool>('mfaBindRequired');
    this.password = registerOutput<String>('password');
    this.passwordResetRequired = registerOutput<bool?>('passwordResetRequired');
    this.userName = registerOutput<String>('userName');
  }
}
