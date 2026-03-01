import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_assignment_args.dart';

/// Manages a V3 Role assignment within OpenStack Keystone.
///
/// > **Note:** You _must_ have admin privileges in your OpenStack cloud to use
/// this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = new openstack.identity.Project("project_1", {name: "project_1"});
/// const user1 = new openstack.identity.User("user_1", {
///     name: "user_1",
///     defaultProjectId: project1.id,
/// });
/// const role1 = new openstack.identity.Role("role_1", {name: "role_1"});
/// const roleAssignment1 = new openstack.identity.RoleAssignment("role_assignment_1", {
///     userId: user1.id,
///     projectId: project1.id,
///     roleId: role1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1", name="project_1")
/// user1 = openstack.identity.User("user_1",
///     name="user_1",
///     default_project_id=project1.id)
/// role1 = openstack.identity.Role("role_1", name="role_1")
/// role_assignment1 = openstack.identity.RoleAssignment("role_assignment_1",
///     user_id=user1.id,
///     project_id=project1.id,
///     role_id=role1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "project_1",
///     });
///
///     var user1 = new OpenStack.Identity.User("user_1", new()
///     {
///         Name = "user_1",
///         DefaultProjectId = project1.Id,
///     });
///
///     var role1 = new OpenStack.Identity.Role("role_1", new()
///     {
///         Name = "role_1",
///     });
///
///     var roleAssignment1 = new OpenStack.Identity.RoleAssignment("role_assignment_1", new()
///     {
///         UserId = user1.Id,
///         ProjectId = project1.Id,
///         RoleId = role1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("project_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user1, err := identity.NewUser(ctx, "user_1", &identity.UserArgs{
/// 			Name:             pulumi.String("user_1"),
/// 			DefaultProjectId: project1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		role1, err := identity.NewRole(ctx, "role_1", &identity.RoleArgs{
/// 			Name: pulumi.String("role_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewRoleAssignment(ctx, "role_assignment_1", &identity.RoleAssignmentArgs{
/// 			UserId:    user1.ID(),
/// 			ProjectId: project1.ID(),
/// 			RoleId:    role1.ID(),
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
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.identity.User;
/// import com.pulumi.openstack.identity.UserArgs;
/// import com.pulumi.openstack.identity.Role;
/// import com.pulumi.openstack.identity.RoleArgs;
/// import com.pulumi.openstack.identity.RoleAssignment;
/// import com.pulumi.openstack.identity.RoleAssignmentArgs;
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
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("project_1")
///             .build());
///
///         var user1 = new User("user1", UserArgs.builder()
///             .name("user_1")
///             .defaultProjectId(project1.id())
///             .build());
///
///         var role1 = new Role("role1", RoleArgs.builder()
///             .name("role_1")
///             .build());
///
///         var roleAssignment1 = new RoleAssignment("roleAssignment1", RoleAssignmentArgs.builder()
///             .userId(user1.id())
///             .projectId(project1.id())
///             .roleId(role1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project1:
///     type: openstack:identity:Project
///     name: project_1
///     properties:
///       name: project_1
///   user1:
///     type: openstack:identity:User
///     name: user_1
///     properties:
///       name: user_1
///       defaultProjectId: ${project1.id}
///   role1:
///     type: openstack:identity:Role
///     name: role_1
///     properties:
///       name: role_1
///   roleAssignment1:
///     type: openstack:identity:RoleAssignment
///     name: role_assignment_1
///     properties:
///       userId: ${user1.id}
///       projectId: ${project1.id}
///       roleId: ${role1.id}
/// ```
///
///
/// ## Import
///
/// Role assignments can be imported using a constructed id. The id should have the form of
/// `domainID/projectID/groupID/userID/roleID`. When something is not used then leave blank.
///
/// For example this will import the role assignment for:
/// projectID: 014395cd-89fc-4c9b-96b7-13d1ee79dad2,
/// userID: 4142e64b-1b35-44a0-9b1e-5affc7af1106,
/// roleID: ea257959-eeb1-4c10-8d33-26f0409a755d
/// ( domainID and groupID are left blank)
///
/// ```sh
/// $ pulumi import openstack:identity/roleAssignment:RoleAssignment role_assignment_1 /014395cd-89fc-4c9b-96b7-13d1ee79dad2//4142e64b-1b35-44a0-9b1e-5affc7af1106/ea257959-eeb1-4c10-8d33-26f0409a755d
/// ```
class RoleAssignment extends pulumi.CustomResource {
  /// The domain to assign the role in.
  late final pulumi.Output<String?> domainId;
  /// The group to assign the role to.
  late final pulumi.Output<String?> groupId;
  /// The project to assign the role in.
  late final pulumi.Output<String?> projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new role assignment.
  late final pulumi.Output<String> region;
  /// The role to assign.
  late final pulumi.Output<String> roleId;
  /// The user to assign the role to.
  late final pulumi.Output<String?> userId;

  /// Creates a new [RoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAssignment]. {@macro pulumi_identity_role_assignment_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAssignment(
    String name, {
    RoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/roleAssignment:RoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainId = registerOutput<String?>('domainId');
    this.groupId = registerOutput<String?>('groupId');
    this.projectId = registerOutput<String?>('projectId');
    this.region = registerOutput<String>('region');
    this.roleId = registerOutput<String>('roleId');
    this.userId = registerOutput<String?>('userId');
  }
}
