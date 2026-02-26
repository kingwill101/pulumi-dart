import 'package:pulumi/pulumi.dart';
import '../user_authentication_mode/user_authentication_mode.dart';
import 'user_args4.dart';

/// Provides an ElastiCache user resource.
///
/// > **Note:** All arguments including the username and passwords will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
/// userId: "testUserId",
/// userName: "testUserName",
/// accessString: "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
/// engine: "redis",
/// passwords: ["password123456789"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
/// user_id="testUserId",
/// user_name="testUserName",
/// access_string="on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
/// engine="redis",
/// passwords=["password123456789"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.ElastiCache.User("test", new()
/// {
/// UserId = "testUserId",
/// UserName = "testUserName",
/// AccessString = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
/// Engine = "redis",
/// Passwords = new[]
/// {
/// "password123456789",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// UserId:       pulumi.String("testUserId"),
/// UserName:     pulumi.String("testUserName"),
/// AccessString: pulumi.String("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"),
/// Engine:       pulumi.String("redis"),
/// Passwords: pulumi.StringArray{
/// pulumi.String("password123456789"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new User("test", UserArgs.builder()
/// .userId("testUserId")
/// .userName("testUserName")
/// .accessString("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember")
/// .engine("redis")
/// .passwords("password123456789")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:elasticache:User
/// properties:
/// userId: testUserId
/// userName: testUserName
/// accessString: on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember
/// engine: redis
/// passwords:
/// - password123456789
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
/// userId: "testUserId",
/// userName: "testUserName",
/// accessString: "on ~* +@all",
/// engine: "redis",
/// authenticationMode: {
/// type: "iam",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
/// user_id="testUserId",
/// user_name="testUserName",
/// access_string="on ~* +@all",
/// engine="redis",
/// authentication_mode={
/// "type": "iam",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.ElastiCache.User("test", new()
/// {
/// UserId = "testUserId",
/// UserName = "testUserName",
/// AccessString = "on ~* +@all",
/// Engine = "redis",
/// AuthenticationMode = new Aws.ElastiCache.Inputs.UserAuthenticationModeArgs
/// {
/// Type = "iam",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// UserId:       pulumi.String("testUserId"),
/// UserName:     pulumi.String("testUserName"),
/// AccessString: pulumi.String("on ~* +@all"),
/// Engine:       pulumi.String("redis"),
/// AuthenticationMode: &elasticache.UserAuthenticationModeArgs{
/// Type: pulumi.String("iam"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new User("test", UserArgs.builder()
/// .userId("testUserId")
/// .userName("testUserName")
/// .accessString("on ~* +@all")
/// .engine("redis")
/// .authenticationMode(UserAuthenticationModeArgs.builder()
/// .type("iam")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:elasticache:User
/// properties:
/// userId: testUserId
/// userName: testUserName
/// accessString: on ~* +@all
/// engine: redis
/// authenticationMode:
/// type: iam
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
/// userId: "testUserId",
/// userName: "testUserName",
/// accessString: "on ~* +@all",
/// engine: "redis",
/// authenticationMode: {
/// type: "password",
/// passwords: [
/// "password1",
/// "password2",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
/// user_id="testUserId",
/// user_name="testUserName",
/// access_string="on ~* +@all",
/// engine="redis",
/// authentication_mode={
/// "type": "password",
/// "passwords": [
/// "password1",
/// "password2",
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.ElastiCache.User("test", new()
/// {
/// UserId = "testUserId",
/// UserName = "testUserName",
/// AccessString = "on ~* +@all",
/// Engine = "redis",
/// AuthenticationMode = new Aws.ElastiCache.Inputs.UserAuthenticationModeArgs
/// {
/// Type = "password",
/// Passwords = new[]
/// {
/// "password1",
/// "password2",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// UserId:       pulumi.String("testUserId"),
/// UserName:     pulumi.String("testUserName"),
/// AccessString: pulumi.String("on ~* +@all"),
/// Engine:       pulumi.String("redis"),
/// AuthenticationMode: &elasticache.UserAuthenticationModeArgs{
/// Type: pulumi.String("password"),
/// Passwords: pulumi.StringArray{
/// pulumi.String("password1"),
/// pulumi.String("password2"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new User("test", UserArgs.builder()
/// .userId("testUserId")
/// .userName("testUserName")
/// .accessString("on ~* +@all")
/// .engine("redis")
/// .authenticationMode(UserAuthenticationModeArgs.builder()
/// .type("password")
/// .passwords(
/// "password1",
/// "password2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:elasticache:User
/// properties:
/// userId: testUserId
/// userName: testUserName
/// accessString: on ~* +@all
/// engine: redis
/// authenticationMode:
/// type: password
/// passwords:
/// - password1
/// - password2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache users using the <span pulumi-lang-nodejs="`userId`" pulumi-lang-dotnet="`UserId`" pulumi-lang-go="`userId`" pulumi-lang-python="`user_id`" pulumi-lang-yaml="`userId`" pulumi-lang-java="`userId`">`user_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/user:User my_user userId1
/// ```
class User4 extends CustomResource {
  /// Access permissions string used for this user. See [Specifying Permissions Using an Access String](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html#Access-string) for more details.
  late final Output<String> accessString;

  /// The ARN of the created ElastiCache User.
  late final Output<String> arn;

  /// Denotes the user's authentication properties. Detailed below.
  late final Output<UserAuthenticationMode> authenticationMode;

  /// The current supported values are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span>, <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span> (case insensitive).
  late final Output<String> engine;

  /// Indicates a password is not required for this user.
  late final Output<bool?> noPasswordRequired;

  /// Passwords used for this user. You can create up to two passwords for each user.
  late final Output<List<String>?> passwords;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of tags to be added to this resource. A tag is a key-value pair.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the user.
  late final Output<String> userId;

  /// The username of the user.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  User4(
    String name, {
    UserArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessString = registerOutput<String>('accessString');
    this.arn = registerOutput<String>('arn');
    this.authenticationMode =
        registerOutput<UserAuthenticationMode>('authenticationMode');
    this.engine = registerOutput<String>('engine');
    this.noPasswordRequired = registerOutput<bool?>('noPasswordRequired');
    this.passwords = registerOutput<List<String>?>('passwords');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userId = registerOutput<String>('userId');
    this.userName = registerOutput<String>('userName');
  }
}
