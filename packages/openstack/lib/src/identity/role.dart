import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';

/// Manages a V3 Role resource within OpenStack Keystone.
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
/// const role1 = new openstack.identity.Role("role_1", {name: "role_1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// role1 = openstack.identity.Role("role_1", name="role_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var role1 = new OpenStack.Identity.Role("role_1", new()
///     {
///         Name = "role_1",
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
/// 		_, err := identity.NewRole(ctx, "role_1", &identity.RoleArgs{
/// 			Name: pulumi.String("role_1"),
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
/// import com.pulumi.openstack.identity.Role;
/// import com.pulumi.openstack.identity.RoleArgs;
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
///         var role1 = new Role("role1", RoleArgs.builder()
///             .name("role_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   role1:
///     type: openstack:identity:Role
///     name: role_1
///     properties:
///       name: role_1
/// ```
///
///
/// ## Import
///
/// Roles can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/role:Role role_1 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class Role extends pulumi.CustomResource {
  /// The domain the role belongs to.
  late final pulumi.Output<String> domainId;
  /// The name of the role.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Role.
  late final pulumi.Output<String> region;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_identity_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.domainId = registerOutput<String>('domainId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
