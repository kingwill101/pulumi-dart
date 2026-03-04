import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Provides a Quick BI User resource.
///
/// For information about Quick BI User and how to use it, see [What is User](https://www.alibabacloud.com/help/doc-detail/33813.htm).
///
/// &gt; **NOTE:** Available in v1.136.0+.
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
/// const example = new alicloud.quickbi.User("example", {
///     accountName: "example_value",
///     adminUser: false,
///     authAdminUser: false,
///     nickName: "example_value",
///     userType: "Analyst",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.quickbi.User("example",
///     account_name="example_value",
///     admin_user=False,
///     auth_admin_user=False,
///     nick_name="example_value",
///     user_type="Analyst")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.QuickBI.User("example", new()
///     {
///         AccountName = "example_value",
///         AdminUser = false,
///         AuthAdminUser = false,
///         NickName = "example_value",
///         UserType = "Analyst",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quickbi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quickbi.NewUser(ctx, "example", &quickbi.UserArgs{
/// 			AccountName:   pulumi.String("example_value"),
/// 			AdminUser:     pulumi.Bool(false),
/// 			AuthAdminUser: pulumi.Bool(false),
/// 			NickName:      pulumi.String("example_value"),
/// 			UserType:      pulumi.String("Analyst"),
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
/// import com.pulumi.alicloud.quickbi.User;
/// import com.pulumi.alicloud.quickbi.UserArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .accountName("example_value")
///             .adminUser(false)
///             .authAdminUser(false)
///             .nickName("example_value")
///             .userType("Analyst")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:quickbi:User
///     properties:
///       accountName: example_value
///       adminUser: false
///       authAdminUser: false
///       nickName: example_value
///       userType: Analyst
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Quick BI User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:quickbi/user:User example <id>
/// ```
class User extends pulumi.CustomResource {
  /// Alibaba Cloud account ID.
  late final pulumi.Output<String?> accountId;

  /// An Alibaba Cloud account, Alibaba Cloud name.
  late final pulumi.Output<String> accountName;

  /// Whether it is the administrator. Valid values: `true` and `false`.
  late final pulumi.Output<bool> adminUser;

  /// Whether this is a permissions administrator. Valid values: `false`, `true`.
  late final pulumi.Output<bool> authAdminUser;

  /// The nickname of the user.
  late final pulumi.Output<String> nickName;

  /// The members of the organization of the type of role separately. Valid values: `Analyst`, `Developer` and `Visitor`.
  late final pulumi.Output<String> userType;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_quickbi_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(String name, {UserArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:quickbi/user:User',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accountId = registerOutput<String?>('accountId');
    accountName = registerOutput<String>('accountName');
    adminUser = registerOutput<bool>('adminUser');
    authAdminUser = registerOutput<bool>('authAdminUser');
    nickName = registerOutput<String>('nickName');
    userType = registerOutput<String>('userType');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(String name, pulumi.Input<String> id, {UserState? state}) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:quickbi/user:User',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String?>('accountId');
    accountName = registerOutput<String>('accountName');
    adminUser = registerOutput<bool>('adminUser');
    authAdminUser = registerOutput<bool>('authAdminUser');
    nickName = registerOutput<String>('nickName');
    userType = registerOutput<String>('userType');
  }
}
