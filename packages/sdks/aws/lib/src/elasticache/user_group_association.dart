import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_association_args.dart';
import 'user_group_association_state.dart';

/// Associate an existing ElastiCache user and an existing user group.
///
/// &gt; Pulumi will detect changes in the `aws.elasticache.UserGroup` since `aws.elasticache.UserGroupAssociation` changes the user IDs associated with the user group. You can ignore these changes with the `lifecycle` `ignoreChanges` meta argument as shown in the example.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.elasticache.User("default", {
///     userId: "defaultUserID",
///     userName: "default",
///     accessString: "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine: "REDIS",
///     passwords: ["password123456789"],
/// });
/// const example = new aws.elasticache.UserGroup("example", {
///     engine: "REDIS",
///     userGroupId: "userGroupId",
///     userIds: [_default.userId],
/// }, {
///     ignoreChanges: ["userIds"],
/// });
/// const exampleUser = new aws.elasticache.User("example", {
///     userId: "exampleUserID",
///     userName: "exampleuser",
///     accessString: "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine: "REDIS",
///     passwords: ["password123456789"],
/// });
/// const exampleUserGroupAssociation = new aws.elasticache.UserGroupAssociation("example", {
///     userGroupId: example.userGroupId,
///     userId: exampleUser.userId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.elasticache.User("default",
///     user_id="defaultUserID",
///     user_name="default",
///     access_string="on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine="REDIS",
///     passwords=["password123456789"])
/// example = aws.elasticache.UserGroup("example",
///     engine="REDIS",
///     user_group_id="userGroupId",
///     user_ids=[default.user_id],
///     opts = pulumi.ResourceOptions(ignore_changes=["userIds"]))
/// example_user = aws.elasticache.User("example",
///     user_id="exampleUserID",
///     user_name="exampleuser",
///     access_string="on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///     engine="REDIS",
///     passwords=["password123456789"])
/// example_user_group_association = aws.elasticache.UserGroupAssociation("example",
///     user_group_id=example.user_group_id,
///     user_id=example_user.user_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.ElastiCache.User("default", new()
///     {
///         UserId = "defaultUserID",
///         UserName = "default",
///         AccessString = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///         Engine = "REDIS",
///         Passwords = new[]
///         {
///             "password123456789",
///         },
///     });
///
///     var example = new Aws.ElastiCache.UserGroup("example", new()
///     {
///         Engine = "REDIS",
///         UserGroupId = "userGroupId",
///         UserIds = new[]
///         {
///             @default.UserId,
///         },
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "userIds",
///         },
///     });
///
///     var exampleUser = new Aws.ElastiCache.User("example", new()
///     {
///         UserId = "exampleUserID",
///         UserName = "exampleuser",
///         AccessString = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember",
///         Engine = "REDIS",
///         Passwords = new[]
///         {
///             "password123456789",
///         },
///     });
///
///     var exampleUserGroupAssociation = new Aws.ElastiCache.UserGroupAssociation("example", new()
///     {
///         UserGroupId = example.UserGroupId,
///         UserId = exampleUser.UserId,
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
/// 		_default, err := elasticache.NewUser(ctx, "default", &elasticache.UserArgs{
/// 			UserId:       pulumi.String("defaultUserID"),
/// 			UserName:     pulumi.String("default"),
/// 			AccessString: pulumi.String("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"),
/// 			Engine:       pulumi.String("REDIS"),
/// 			Passwords: pulumi.StringArray{
/// 				pulumi.String("password123456789"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := elasticache.NewUserGroup(ctx, "example", &elasticache.UserGroupArgs{
/// 			Engine:      pulumi.String("REDIS"),
/// 			UserGroupId: pulumi.String("userGroupId"),
/// 			UserIds: pulumi.StringArray{
/// 				_default.UserId,
/// 			},
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"userIds",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := elasticache.NewUser(ctx, "example", &elasticache.UserArgs{
/// 			UserId:       pulumi.String("exampleUserID"),
/// 			UserName:     pulumi.String("exampleuser"),
/// 			AccessString: pulumi.String("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"),
/// 			Engine:       pulumi.String("REDIS"),
/// 			Passwords: pulumi.StringArray{
/// 				pulumi.String("password123456789"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewUserGroupAssociation(ctx, "example", &elasticache.UserGroupAssociationArgs{
/// 			UserGroupId: example.UserGroupId,
/// 			UserId:      exampleUser.UserId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elasticache_user" "default" {
///   user_id       = "defaultUserID"
///   user_name     = "default"
///   access_string = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"
///   engine        = "REDIS"
///   passwords     = ["password123456789"]
/// }
/// resource "aws_elasticache_usergroup" "example" {
///   lifecycle {
///     ignore_changes = [userIds]
///   }
///   engine        = "REDIS"
///   user_group_id = "userGroupId"
///   user_ids      = [aws_elasticache_user.default.user_id]
/// }
/// resource "aws_elasticache_user" "example" {
///   user_id       = "exampleUserID"
///   user_name     = "exampleuser"
///   access_string = "on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember"
///   engine        = "REDIS"
///   passwords     = ["password123456789"]
/// }
/// resource "aws_elasticache_usergroupassociation" "example" {
///   user_group_id = aws_elasticache_usergroup.example.user_group_id
///   user_id       = aws_elasticache_user.example.user_id
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
/// import com.pulumi.aws.elasticache.UserGroupAssociation;
/// import com.pulumi.aws.elasticache.UserGroupAssociationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .userId("defaultUserID")
///             .userName("default")
///             .accessString("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember")
///             .engine("REDIS")
///             .passwords("password123456789")
///             .build());
///
///         var example = new UserGroup("example", UserGroupArgs.builder()
///             .engine("REDIS")
///             .userGroupId("userGroupId")
///             .userIds(default_.userId())
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("userIds")
///                 .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userId("exampleUserID")
///             .userName("exampleuser")
///             .accessString("on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember")
///             .engine("REDIS")
///             .passwords("password123456789")
///             .build());
///
///         var exampleUserGroupAssociation = new UserGroupAssociation("exampleUserGroupAssociation", UserGroupAssociationArgs.builder()
///             .userGroupId(example.userGroupId())
///             .userId(exampleUser.userId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:elasticache:User
///     properties:
///       userId: defaultUserID
///       userName: default
///       accessString: on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember
///       engine: REDIS
///       passwords:
///         - password123456789
///   example:
///     type: aws:elasticache:UserGroup
///     properties:
///       engine: REDIS
///       userGroupId: userGroupId
///       userIds:
///         - ${default.userId}
///     options:
///       ignoreChanges:
///         - userIds
///   exampleUser:
///     type: aws:elasticache:User
///     name: example
///     properties:
///       userId: exampleUserID
///       userName: exampleuser
///       accessString: on ~app::* -@all +@read +@hash +@bitmap +@geo -setbit -bitfield -hset -hsetnx -hmset -hincrby -hincrbyfloat -hdel -bitop -geoadd -georadius -georadiusbymember
///       engine: REDIS
///       passwords:
///         - password123456789
///   exampleUserGroupAssociation:
///     type: aws:elasticache:UserGroupAssociation
///     name: example
///     properties:
///       userGroupId: ${example.userGroupId}
///       userId: ${exampleUser.userId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache user group associations using the `userGroupId` and `userId`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/userGroupAssociation:UserGroupAssociation example userGoupId1,userId
/// ```
class UserGroupAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the user group.
  late final pulumi.Output<String> userGroupId;
  /// ID of the user to associated with the user group.
  late final pulumi.Output<String> userId;

  /// Creates a new [UserGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroupAssociation]. {@macro pulumi_elasticache_user_group_association_user_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroupAssociation(
    String name, {
    UserGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/userGroupAssociation:UserGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    userGroupId = registerOutput<String>('userGroupId');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [UserGroupAssociation] resource's state with the given [name] and [id].
  static UserGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    UserGroupAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/userGroupAssociation:UserGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    userGroupId = registerOutput<String>('userGroupId');
    userId = registerOutput<String>('userId');
  }

  /// Creates a typed reference to an existing [UserGroupAssociation] resource.
  UserGroupAssociation.reference(String urn)
    : super(
        'aws:elasticache/userGroupAssociation:UserGroupAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    userGroupId = registerOutput<String>('userGroupId');
    userId = registerOutput<String>('userId');
  }
}
