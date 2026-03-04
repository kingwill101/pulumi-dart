import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_authentication_mode.dart';
import 'user_state.dart';

/// Provides an ElastiCache user resource.
///
/// &gt; **Note:** All arguments including the username and passwords will be stored in the raw state as plain-text.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
///     userId: "testUserId",
///     userName: "testUserName",
///     accessString: "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine: "redis",
///     passwords: ["password123456789"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
///     user_id="testUserId",
///     user_name="testUserName",
///     access_string="on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine="redis",
///     passwords=["password123456789"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.ElastiCache.User("test", new()
///     {
///         UserId = "testUserId",
///         UserName = "testUserName",
///         AccessString = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///         Engine = "redis",
///         Passwords = new[]
///         {
///             "password123456789",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// 			UserId:       pulumi.String("testUserId"),
/// 			UserName:     pulumi.String("testUserName"),
/// 			AccessString: pulumi.String("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"),
/// 			Engine:       pulumi.String("redis"),
/// 			Passwords: pulumi.StringArray{
/// 				pulumi.String("password123456789"),
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
/// import com.pulumi.aws.elasticache.User;
/// import com.pulumi.aws.elasticache.UserArgs;
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
///         var test = new User("test", UserArgs.builder()
///             .userId("testUserId")
///             .userName("testUserName")
///             .accessString("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember")
///             .engine("redis")
///             .passwords("password123456789")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:elasticache:User
///     properties:
///       userId: testUserId
///       userName: testUserName
///       accessString: on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember
///       engine: redis
///       passwords:
///         - password123456789
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
///     userId: "testUserId",
///     userName: "testUserName",
///     accessString: "on ~* +@all",
///     engine: "redis",
///     authenticationMode: {
///         type: "iam",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
///     user_id="testUserId",
///     user_name="testUserName",
///     access_string="on ~* +@all",
///     engine="redis",
///     authentication_mode={
///         "type": "iam",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.ElastiCache.User("test", new()
///     {
///         UserId = "testUserId",
///         UserName = "testUserName",
///         AccessString = "on ~* +@all",
///         Engine = "redis",
///         AuthenticationMode = new Aws.ElastiCache.Inputs.UserAuthenticationModeArgs
///         {
///             Type = "iam",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// 			UserId:       pulumi.String("testUserId"),
/// 			UserName:     pulumi.String("testUserName"),
/// 			AccessString: pulumi.String("on ~* +@all"),
/// 			Engine:       pulumi.String("redis"),
/// 			AuthenticationMode: &elasticache.UserAuthenticationModeArgs{
/// 				Type: pulumi.String("iam"),
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
/// import com.pulumi.aws.elasticache.User;
/// import com.pulumi.aws.elasticache.UserArgs;
/// import com.pulumi.aws.elasticache.inputs.UserAuthenticationModeArgs;
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
///         var test = new User("test", UserArgs.builder()
///             .userId("testUserId")
///             .userName("testUserName")
///             .accessString("on ~* +@all")
///             .engine("redis")
///             .authenticationMode(UserAuthenticationModeArgs.builder()
///                 .type("iam")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:elasticache:User
///     properties:
///       userId: testUserId
///       userName: testUserName
///       accessString: on ~* +@all
///       engine: redis
///       authenticationMode:
///         type: iam
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
///     userId: "testUserId",
///     userName: "testUserName",
///     accessString: "on ~* +@all",
///     engine: "redis",
///     authenticationMode: {
///         type: "password",
///         passwords: [
///             "password1",
///             "password2",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
///     user_id="testUserId",
///     user_name="testUserName",
///     access_string="on ~* +@all",
///     engine="redis",
///     authentication_mode={
///         "type": "password",
///         "passwords": [
///             "password1",
///             "password2",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.ElastiCache.User("test", new()
///     {
///         UserId = "testUserId",
///         UserName = "testUserName",
///         AccessString = "on ~* +@all",
///         Engine = "redis",
///         AuthenticationMode = new Aws.ElastiCache.Inputs.UserAuthenticationModeArgs
///         {
///             Type = "password",
///             Passwords = new[]
///             {
///                 "password1",
///                 "password2",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// 			UserId:       pulumi.String("testUserId"),
/// 			UserName:     pulumi.String("testUserName"),
/// 			AccessString: pulumi.String("on ~* +@all"),
/// 			Engine:       pulumi.String("redis"),
/// 			AuthenticationMode: &elasticache.UserAuthenticationModeArgs{
/// 				Type: pulumi.String("password"),
/// 				Passwords: pulumi.StringArray{
/// 					pulumi.String("password1"),
/// 					pulumi.String("password2"),
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
/// import com.pulumi.aws.elasticache.User;
/// import com.pulumi.aws.elasticache.UserArgs;
/// import com.pulumi.aws.elasticache.inputs.UserAuthenticationModeArgs;
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
///         var test = new User("test", UserArgs.builder()
///             .userId("testUserId")
///             .userName("testUserName")
///             .accessString("on ~* +@all")
///             .engine("redis")
///             .authenticationMode(UserAuthenticationModeArgs.builder()
///                 .type("password")
///                 .passwords(
///                     "password1",
///                     "password2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:elasticache:User
///     properties:
///       userId: testUserId
///       userName: testUserName
///       accessString: on ~* +@all
///       engine: redis
///       authenticationMode:
///         type: password
///         passwords:
///           - password1
///           - password2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache users using the `user_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/user:User my_user userId1
/// ```
class User extends pulumi.CustomResource {
  /// Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  late final pulumi.Output<String> accessString;

  /// The ARN of the created ElastiCache User.
  late final pulumi.Output<String> arn;

  /// Denotes the user's authentication properties. Detailed below.
  late final pulumi.Output<UserAuthenticationMode> authenticationMode;

  /// The current supported values are `redis`, `valkey` (case insensitive).
  late final pulumi.Output<String> engine;

  /// Indicates a password is not required for this user.
  late final pulumi.Output<bool?> noPasswordRequired;

  /// Passwords used for this user. You can create up to two passwords for each user.
  late final pulumi.Output<List<String>?> passwords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of tags to be added to this resource. A tag is a key-value pair.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the user.
  late final pulumi.Output<String> userId;

  /// The username of the user.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_elasticache_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(String name, {UserArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:elasticache/user:User',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    accessString = registerOutput<String>('accessString');
    arn = registerOutput<String>('arn');
    authenticationMode = registerOutput<UserAuthenticationMode>(
      'authenticationMode',
    );
    engine = registerOutput<String>('engine');
    noPasswordRequired = registerOutput<bool?>('noPasswordRequired');
    passwords = registerOutput<List<String>?>('passwords');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userId = registerOutput<String>('userId');
    userName = registerOutput<String>('userName');
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
         'aws:elasticache/user:User',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessString = registerOutput<String>('accessString');
    arn = registerOutput<String>('arn');
    authenticationMode = registerOutput<UserAuthenticationMode>(
      'authenticationMode',
    );
    engine = registerOutput<String>('engine');
    noPasswordRequired = registerOutput<bool?>('noPasswordRequired');
    passwords = registerOutput<List<String>?>('passwords');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    userId = registerOutput<String>('userId');
    userName = registerOutput<String>('userName');
  }
}
