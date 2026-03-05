import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_in_group_args.dart';
import 'user_in_group_state.dart';

/// Adds the specified user to the specified group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {
///     name: "example",
///     passwordPolicy: {
///         temporaryPasswordValidityDays: 7,
///         minimumLength: 6,
///         requireUppercase: false,
///         requireSymbols: false,
///         requireNumbers: false,
///     },
/// });
/// const exampleUser = new aws.cognito.User("example", {
///     userPoolId: example.id,
///     username: "example",
/// });
/// const exampleUserGroup = new aws.cognito.UserGroup("example", {
///     userPoolId: example.id,
///     name: "example",
/// });
/// const exampleUserInGroup = new aws.cognito.UserInGroup("example", {
///     userPoolId: example.id,
///     groupName: exampleUserGroup.name,
///     username: exampleUser.username,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example",
///     name="example",
///     password_policy={
///         "temporary_password_validity_days": 7,
///         "minimum_length": 6,
///         "require_uppercase": False,
///         "require_symbols": False,
///         "require_numbers": False,
///     })
/// example_user = aws.cognito.User("example",
///     user_pool_id=example.id,
///     username="example")
/// example_user_group = aws.cognito.UserGroup("example",
///     user_pool_id=example.id,
///     name="example")
/// example_user_in_group = aws.cognito.UserInGroup("example",
///     user_pool_id=example.id,
///     group_name=example_user_group.name,
///     username=example_user.username)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///         PasswordPolicy = new Aws.Cognito.Inputs.UserPoolPasswordPolicyArgs
///         {
///             TemporaryPasswordValidityDays = 7,
///             MinimumLength = 6,
///             RequireUppercase = false,
///             RequireSymbols = false,
///             RequireNumbers = false,
///         },
///     });
///
///     var exampleUser = new Aws.Cognito.User("example", new()
///     {
///         UserPoolId = example.Id,
///         Username = "example",
///     });
///
///     var exampleUserGroup = new Aws.Cognito.UserGroup("example", new()
///     {
///         UserPoolId = example.Id,
///         Name = "example",
///     });
///
///     var exampleUserInGroup = new Aws.Cognito.UserInGroup("example", new()
///     {
///         UserPoolId = example.Id,
///         GroupName = exampleUserGroup.Name,
///         Username = exampleUser.Username,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example"),
/// 			PasswordPolicy: &cognito.UserPoolPasswordPolicyArgs{
/// 				TemporaryPasswordValidityDays: pulumi.Int(7),
/// 				MinimumLength:                 pulumi.Int(6),
/// 				RequireUppercase:              pulumi.Bool(false),
/// 				RequireSymbols:                pulumi.Bool(false),
/// 				RequireNumbers:                pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := cognito.NewUser(ctx, "example", &cognito.UserArgs{
/// 			UserPoolId: example.ID(),
/// 			Username:   pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserGroup, err := cognito.NewUserGroup(ctx, "example", &cognito.UserGroupArgs{
/// 			UserPoolId: example.ID(),
/// 			Name:       pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserInGroup(ctx, "example", &cognito.UserInGroupArgs{
/// 			UserPoolId: example.ID(),
/// 			GroupName:  exampleUserGroup.Name,
/// 			Username:   exampleUser.Username,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.inputs.UserPoolPasswordPolicyArgs;
/// import com.pulumi.aws.cognito.User;
/// import com.pulumi.aws.cognito.UserArgs;
/// import com.pulumi.aws.cognito.UserGroup;
/// import com.pulumi.aws.cognito.UserGroupArgs;
/// import com.pulumi.aws.cognito.UserInGroup;
/// import com.pulumi.aws.cognito.UserInGroupArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example")
///             .passwordPolicy(UserPoolPasswordPolicyArgs.builder()
///                 .temporaryPasswordValidityDays(7)
///                 .minimumLength(6)
///                 .requireUppercase(false)
///                 .requireSymbols(false)
///                 .requireNumbers(false)
///                 .build())
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .userPoolId(example.id())
///             .username("example")
///             .build());
///
///         var exampleUserGroup = new UserGroup("exampleUserGroup", UserGroupArgs.builder()
///             .userPoolId(example.id())
///             .name("example")
///             .build());
///
///         var exampleUserInGroup = new UserInGroup("exampleUserInGroup", UserInGroupArgs.builder()
///             .userPoolId(example.id())
///             .groupName(exampleUserGroup.name())
///             .username(exampleUser.username())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example
///       passwordPolicy:
///         temporaryPasswordValidityDays: 7
///         minimumLength: 6
///         requireUppercase: false
///         requireSymbols: false
///         requireNumbers: false
///   exampleUser:
///     type: aws:cognito:User
///     name: example
///     properties:
///       userPoolId: ${example.id}
///       username: example
///   exampleUserGroup:
///     type: aws:cognito:UserGroup
///     name: example
///     properties:
///       userPoolId: ${example.id}
///       name: example
///   exampleUserInGroup:
///     type: aws:cognito:UserInGroup
///     name: example
///     properties:
///       userPoolId: ${example.id}
///       groupName: ${exampleUserGroup.name}
///       username: ${exampleUser.username}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a Cognito Group User using a comma-delimited string concatenating the `user_pool_id`, `group_name`, and `username` arguments. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userInGroup:UserInGroup example us-east-1_vG78M4goG,example-group,example-user
/// ```
class UserInGroup extends pulumi.CustomResource {
  /// The name of the group to which the user is to be added.
  late final pulumi.Output<String> groupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The user pool ID of the user and group.
  late final pulumi.Output<String> userPoolId;
  /// The username of the user to be added to the group.
  late final pulumi.Output<String> username;

  /// Creates a new [UserInGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserInGroup]. {@macro pulumi_cognito_user_in_group_user_in_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserInGroup(
    String name, {
    UserInGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userInGroup:UserInGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupName = registerOutput<String>('groupName');
    region = registerOutput<String>('region');
    userPoolId = registerOutput<String>('userPoolId');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [UserInGroup] resource's state with the given [name] and [id].
  static UserInGroup get(
    String name,
    pulumi.Input<String> id, {
    UserInGroupState? state,
  }) {
    return UserInGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserInGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userInGroup:UserInGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupName = registerOutput<String>('groupName');
    region = registerOutput<String>('region');
    userPoolId = registerOutput<String>('userPoolId');
    username = registerOutput<String>('username');
  }
}
