import 'package:pulumi/pulumi.dart';
import 'user_group_args2.dart';

/// Provides an ElastiCache user group resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.elasticache.User("test", {
/// userId: "testUserId",
/// userName: "default",
/// accessString: "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
/// engine: "redis",
/// passwords: ["password123456789"],
/// });
/// const testUserGroup = new aws.elasticache.UserGroup("test", {
/// engine: "redis",
/// userGroupId: "userGroupId",
/// userIds: [test.userId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.elasticache.User("test",
/// user_id="testUserId",
/// user_name="default",
/// access_string="on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
/// engine="redis",
/// passwords=["password123456789"])
/// test_user_group = aws.elasticache.UserGroup("test",
/// engine="redis",
/// user_group_id="userGroupId",
/// user_ids=[test.user_id])
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
/// UserName = "default",
/// AccessString = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
/// Engine = "redis",
/// Passwords = new[]
/// {
/// "password123456789",
/// },
/// });
///
/// var testUserGroup = new Aws.ElastiCache.UserGroup("test", new()
/// {
/// Engine = "redis",
/// UserGroupId = "userGroupId",
/// UserIds = new[]
/// {
/// test.UserId,
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
/// test, err := elasticache.NewUser(ctx, "test", &elasticache.UserArgs{
/// UserId:       pulumi.String("testUserId"),
/// UserName:     pulumi.String("default"),
/// AccessString: pulumi.String("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"),
/// Engine:       pulumi.String("redis"),
/// Passwords: pulumi.StringArray{
/// pulumi.String("password123456789"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = elasticache.NewUserGroup(ctx, "test", &elasticache.UserGroupArgs{
/// Engine:      pulumi.String("redis"),
/// UserGroupId: pulumi.String("userGroupId"),
/// UserIds: pulumi.StringArray{
/// test.UserId,
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new User("test", UserArgs.builder()
/// .userId("testUserId")
/// .userName("default")
/// .accessString("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember")
/// .engine("redis")
/// .passwords("password123456789")
/// .build());
///
/// var testUserGroup = new UserGroup("testUserGroup", UserGroupArgs.builder()
/// .engine("redis")
/// .userGroupId("userGroupId")
/// .userIds(test.userId())
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
/// userName: default
/// accessString: on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember
/// engine: redis
/// passwords:
/// - password123456789
/// testUserGroup:
/// type: aws:elasticache:UserGroup
/// name: test
/// properties:
/// engine: redis
/// userGroupId: userGroupId
/// userIds:
/// - ${test.userId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache user groups using the <span pulumi-lang-nodejs="`userGroupId`" pulumi-lang-dotnet="`UserGroupId`" pulumi-lang-go="`userGroupId`" pulumi-lang-python="`user_group_id`" pulumi-lang-yaml="`userGroupId`" pulumi-lang-java="`userGroupId`">`user_group_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/userGroup:UserGroup my_user_group userGoupId1
/// ```
class UserGroup2 extends CustomResource {
  /// The ARN that identifies the user group.
  late final Output<String> arn;

  /// The current supported value are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span>, <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span> (case insensitive).
  late final Output<String> engine;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the user group.
  ///
  /// The following arguments are optional:
  late final Output<String> userGroupId;

  /// The list of user IDs that belong to the user group.
  late final Output<List<String>?> userIds;

  UserGroup2(
    String name, {
    UserGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/userGroup:UserGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.engine = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.userGroupId = Output.createUnknown<String>();
    this.userIds = Output.createUnknown<List<String>?>();
  }
}
