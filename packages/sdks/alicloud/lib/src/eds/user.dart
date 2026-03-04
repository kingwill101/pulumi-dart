import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Provides a Elastic Desktop Service (ECD) User resource.
///
/// For information about Elastic Desktop Service (ECD) User and how to use it, see [What is User](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-eds-user-2021-03-08-createusers-desktop).
///
/// &gt; **NOTE:** Available since v1.142.0.
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
/// const _default = new alicloud.eds.User("default", {
///     endUserId: "terraform_example123",
///     email: "tf.example@abc.com",
///     phone: "18888888888",
///     password: "Example_123",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eds.User("default",
///     end_user_id="terraform_example123",
///     email="tf.example@abc.com",
///     phone="18888888888",
///     password="Example_123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Eds.User("default", new()
///     {
///         EndUserId = "terraform_example123",
///         Email = "tf.example@abc.com",
///         Phone = "18888888888",
///         Password = "Example_123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eds.NewUser(ctx, "default", &eds.UserArgs{
/// 			EndUserId: pulumi.String("terraform_example123"),
/// 			Email:     pulumi.String("tf.example@abc.com"),
/// 			Phone:     pulumi.String("18888888888"),
/// 			Password:  pulumi.String("Example_123"),
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
/// import com.pulumi.alicloud.eds.User;
/// import com.pulumi.alicloud.eds.UserArgs;
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
///         var default_ = new User("default", UserArgs.builder()
///             .endUserId("terraform_example123")
///             .email("tf.example@abc.com")
///             .phone("18888888888")
///             .password("Example_123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:eds:User
///     properties:
///       endUserId: terraform_example123
///       email: tf.example@abc.com
///       phone: '18888888888'
///       password: Example_123
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/user:User example <end_user_id>
/// ```
class User extends pulumi.CustomResource {
  /// The email of the user email.
  late final pulumi.Output<String> email;

  /// The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  late final pulumi.Output<String> endUserId;

  /// The password of the user password.
  late final pulumi.Output<String?> password;

  /// The phone of the mobile phone number.
  late final pulumi.Output<String?> phone;

  /// The status of the resource. Valid values: `Unlocked`, `Locked`.
  late final pulumi.Output<String> status;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_eds_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(String name, {UserArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:eds/user:User',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    email = registerOutput<String>('email');
    endUserId = registerOutput<String>('endUserId');
    password = registerOutput<String?>('password');
    phone = registerOutput<String?>('phone');
    status = registerOutput<String>('status');
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
         'alicloud:eds/user:User',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    email = registerOutput<String>('email');
    endUserId = registerOutput<String>('endUserId');
    password = registerOutput<String?>('password');
    phone = registerOutput<String?>('phone');
    status = registerOutput<String>('status');
  }
}
