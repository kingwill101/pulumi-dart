import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_args.dart';

/// Resource for managing an AWS IdentityStore Group Membership.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleUser = new aws.identitystore.User("example", {
///     identityStoreId: example.then(example => example.identityStoreIds?.[0]),
///     displayName: "John Doe",
///     userName: "john.doe@example.com",
///     name: {
///         familyName: "Doe",
///         givenName: "John",
///     },
/// });
/// const exampleGroup = new aws.identitystore.Group("example", {
///     identityStoreId: example.then(example => example.identityStoreIds?.[0]),
///     displayName: "MyGroup",
///     description: "Some group name",
/// });
/// const exampleGroupMembership = new aws.identitystore.GroupMembership("example", {
///     identityStoreId: example.then(example => example.identityStoreIds?.[0]),
///     groupId: exampleGroup.groupId,
///     memberId: exampleUser.userId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_user = aws.identitystore.User("example",
///     identity_store_id=example.identity_store_ids[0],
///     display_name="John Doe",
///     user_name="john.doe@example.com",
///     name={
///         "family_name": "Doe",
///         "given_name": "John",
///     })
/// example_group = aws.identitystore.Group("example",
///     identity_store_id=example.identity_store_ids[0],
///     display_name="MyGroup",
///     description="Some group name")
/// example_group_membership = aws.identitystore.GroupMembership("example",
///     identity_store_id=example.identity_store_ids[0],
///     group_id=example_group.group_id,
///     member_id=example_user.user_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleUser = new Aws.IdentityStore.User("example", new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///         DisplayName = "John Doe",
///         UserName = "john.doe@example.com",
///         Name = new Aws.IdentityStore.Inputs.UserNameArgs
///         {
///             FamilyName = "Doe",
///             GivenName = "John",
///         },
///     });
///
///     var exampleGroup = new Aws.IdentityStore.Group("example", new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///         DisplayName = "MyGroup",
///         Description = "Some group name",
///     });
///
///     var exampleGroupMembership = new Aws.IdentityStore.GroupMembership("example", new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///         GroupId = exampleGroup.GroupId,
///         MemberId = exampleUser.UserId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUser, err := identitystore.NewUser(ctx, "example", &identitystore.UserArgs{
/// 			IdentityStoreId: pulumi.String(example.IdentityStoreIds[0]),
/// 			DisplayName:     pulumi.String("John Doe"),
/// 			UserName:        pulumi.String("john.doe@example.com"),
/// 			Name: &identitystore.UserNameArgs{
/// 				FamilyName: pulumi.String("Doe"),
/// 				GivenName:  pulumi.String("John"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGroup, err := identitystore.NewGroup(ctx, "example", &identitystore.GroupArgs{
/// 			IdentityStoreId: pulumi.String(example.IdentityStoreIds[0]),
/// 			DisplayName:     pulumi.String("MyGroup"),
/// 			Description:     pulumi.String("Some group name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identitystore.NewGroupMembership(ctx, "example", &identitystore.GroupMembershipArgs{
/// 			IdentityStoreId: pulumi.String(example.IdentityStoreIds[0]),
/// 			GroupId:         exampleGroup.GroupId,
/// 			MemberId:        exampleUser.UserId,
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.identitystore.User;
/// import com.pulumi.aws.identitystore.UserArgs;
/// import com.pulumi.aws.identitystore.inputs.UserNameArgs;
/// import com.pulumi.aws.identitystore.Group;
/// import com.pulumi.aws.identitystore.GroupArgs;
/// import com.pulumi.aws.identitystore.GroupMembership;
/// import com.pulumi.aws.identitystore.GroupMembershipArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .displayName("John Doe")
///             .userName("john.doe@example.com")
///             .name(UserNameArgs.builder()
///                 .familyName("Doe")
///                 .givenName("John")
///                 .build())
///             .build());
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .displayName("MyGroup")
///             .description("Some group name")
///             .build());
///
///         var exampleGroupMembership = new GroupMembership("exampleGroupMembership", GroupMembershipArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .groupId(exampleGroup.groupId())
///             .memberId(exampleUser.userId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUser:
///     type: aws:identitystore:User
///     name: example
///     properties:
///       identityStoreId: ${example.identityStoreIds[0]}
///       displayName: John Doe
///       userName: john.doe@example.com
///       name:
///         familyName: Doe
///         givenName: John
///   exampleGroup:
///     type: aws:identitystore:Group
///     name: example
///     properties:
///       identityStoreId: ${example.identityStoreIds[0]}
///       displayName: MyGroup
///       description: Some group name
///   exampleGroupMembership:
///     type: aws:identitystore:GroupMembership
///     name: example
///     properties:
///       identityStoreId: ${example.identityStoreIds[0]}
///       groupId: ${exampleGroup.groupId}
///       memberId: ${exampleUser.userId}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.identitystore.GroupMembership` using the `identity_store_id/membership_id`. For example:
///
/// ```sh
/// $ pulumi import aws:identitystore/groupMembership:GroupMembership example d-0000000000/00000000-0000-0000-0000-000000000000
/// ```
class GroupMembership extends pulumi.CustomResource {
  /// The identifier for a group in the Identity Store.
  late final pulumi.Output<String> groupId;

  /// Identity Store ID associated with the Single Sign-On Instance.
  late final pulumi.Output<String> identityStoreId;

  /// The identifier for a user in the Identity Store.
  late final pulumi.Output<String> memberId;

  /// The identifier of the newly created group membership in the Identity Store.
  late final pulumi.Output<String> membershipId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [GroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupMembership]. {@macro pulumi_identitystore_group_membership_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:identitystore/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupId = registerOutput<String>('groupId');
    this.identityStoreId = registerOutput<String>('identityStoreId');
    this.memberId = registerOutput<String>('memberId');
    this.membershipId = registerOutput<String>('membershipId');
    this.region = registerOutput<String>('region');
  }
}
