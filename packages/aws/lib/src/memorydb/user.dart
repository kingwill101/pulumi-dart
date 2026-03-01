import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_authentication_mode.dart';

/// Provides a MemoryDB User.
///
/// More information about users and ACL-s can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).
///
/// > **Note:** All arguments including the username and passwords will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// const example = new random.index.Password("example", {length: 16});
/// const exampleUser = new aws.memorydb.User("example", {
///     userName: "my-user",
///     accessString: "on ~* &* +@all",
///     authenticationMode: {
///         type: "password",
///         passwords: [example.result],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// example = random.index.Password("example", length=16)
/// example_user = aws.memorydb.User("example",
///     user_name="my-user",
///     access_string="on ~* &* +@all",
///     authentication_mode={
///         "type": "password",
///         "passwords": [example["result"]],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Random.Index.Password("example", new()
///     {
///         Length = 16,
///     });
///
///     var exampleUser = new Aws.MemoryDb.User("example", new()
///     {
///         UserName = "my-user",
///         AccessString = "on ~* &* +@all",
///         AuthenticationMode = new Aws.MemoryDb.Inputs.UserAuthenticationModeArgs
///         {
///             Type = "password",
///             Passwords = new[]
///             {
///                 example.Result,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := random.NewPassword(ctx, "example", &random.PasswordArgs{
/// 			Length: 16,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorydb.NewUser(ctx, "example", &memorydb.UserArgs{
/// 			UserName:     pulumi.String("my-user"),
/// 			AccessString: pulumi.String("on ~* &* +@all"),
/// 			AuthenticationMode: &memorydb.UserAuthenticationModeArgs{
/// 				Type: pulumi.String("password"),
/// 				Passwords: pulumi.StringArray{
/// 					example.Result,
/// 				},
/// 			},
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
/// import com.pulumi.random.Password;
/// import com.pulumi.random.PasswordArgs;
/// import com.pulumi.aws.memorydb.User;
/// import com.pulumi.aws.memorydb.UserArgs;
/// import com.pulumi.aws.memorydb.inputs.UserAuthenticationModeArgs;
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
///         var example = new Password("example", PasswordArgs.builder()
///             .length(16)
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userName("my-user")
///             .accessString("on ~* &* +@all")
///             .authenticationMode(UserAuthenticationModeArgs.builder()
///                 .type("password")
///                 .passwords(example.result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: random:Password
///     properties:
///       length: 16
///   exampleUser:
///     type: aws:memorydb:User
///     name: example
///     properties:
///       userName: my-user
///       accessString: on ~* &* +@all
///       authenticationMode:
///         type: password
///         passwords:
///           - ${example.result}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a user using the `user_name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/user:User example my-user
/// ```
///
/// The `passwords` are not available for imported resources, as this information cannot be read back from the MemoryDB API.
class User extends pulumi.CustomResource {
  /// Access permissions string used for this user.
  late final pulumi.Output<String> accessString;
  /// ARN of the user.
  late final pulumi.Output<String> arn;
  /// Denotes the user's authentication properties. Detailed below.
  late final pulumi.Output<UserAuthenticationMode> authenticationMode;
  /// Minimum engine version supported for the user.
  late final pulumi.Output<String> minimumEngineVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Name of the MemoryDB user. Up to 40 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_memorydb_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessString = registerOutput<String>('accessString');
    this.arn = registerOutput<String>('arn');
    this.authenticationMode = registerOutput<UserAuthenticationMode>('authenticationMode');
    this.minimumEngineVersion = registerOutput<String>('minimumEngineVersion');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userName = registerOutput<String>('userName');
  }
}
