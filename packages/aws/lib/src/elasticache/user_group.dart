import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_args.dart';

/// Provides an ElastiCache user group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
///     userId: "testUserId",
///     userName: "default",
///     accessString: "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine: "redis",
///     passwords: ["password123456789"],
/// });
/// const testUserGroup = new aws.elasticache.UserGroup("test", {
///     engine: "redis",
///     userGroupId: "userGroupId",
///     userIds: [test.userId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
///     user_id="testUserId",
///     user_name="default",
///     access_string="on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine="redis",
///     passwords=["password123456789"])
/// test_user_group = aws.elasticache.UserGroup("test",
///     engine="redis",
///     user_group_id="userGroupId",
///     user_ids=[test.user_id])
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
///         UserName = "default",
///         AccessString = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///         Engine = "redis",
///         Passwords = new[]
///         {
///             "password123456789",
///         },
///     });
///
///     var testUserGroup = new Aws.ElastiCache.UserGroup("test", new()
///     {
///         Engine = "redis",
///         UserGroupId = "userGroupId",
///         UserIds = new[]
///         {
///             test.UserId,
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
/// 		test, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// 			UserId:       pulumi.String("testUserId"),
/// 			UserName:     pulumi.String("default"),
/// 			AccessString: pulumi.String("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"),
/// 			Engine:       pulumi.String("redis"),
/// 			Passwords: pulumi.StringArray{
/// 				pulumi.String("password123456789"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewUserGroup(ctx, "test", &elasticache.UserGroupArgs{
/// 			Engine:      pulumi.String("redis"),
/// 			UserGroupId: pulumi.String("userGroupId"),
/// 			UserIds: pulumi.StringArray{
/// 				test.UserId,
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
/// import com.pulumi.aws.elasticache.UserGroup;
/// import com.pulumi.aws.elasticache.UserGroupArgs;
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
///             .userName("default")
///             .accessString("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember")
///             .engine("redis")
///             .passwords("password123456789")
///             .build());
///
///         var testUserGroup = new UserGroup("testUserGroup", UserGroupArgs.builder()
///             .engine("redis")
///             .userGroupId("userGroupId")
///             .userIds(test.userId())
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
///       userName: default
///       accessString: on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember
///       engine: redis
///       passwords:
///         - password123456789
///   testUserGroup:
///     type: aws:elasticache:UserGroup
///     name: test
///     properties:
///       engine: redis
///       userGroupId: userGroupId
///       userIds:
///         - ${test.userId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache user groups using the `user_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/userGroup:UserGroup my_user_group userGoupId1
/// ```
class UserGroup extends pulumi.CustomResource {
  /// The ARN that identifies the user group.
  late final pulumi.Output<String> arn;

  /// The current supported value are `redis`, `valkey` (case insensitive).
  late final pulumi.Output<String> engine;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the user group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userGroupId;

  /// The list of user IDs that belong to the user group.
  late final pulumi.Output<List<String>?> userIds;

  /// Creates a new [UserGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroup]. {@macro pulumi_elasticache_user_group_user_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroup(
    String name, {
    UserGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elasticache/userGroup:UserGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.engine = registerOutput<String>('engine');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userGroupId = registerOutput<String>('userGroupId');
    this.userIds = registerOutput<List<String>?>('userIds');
  }
}
