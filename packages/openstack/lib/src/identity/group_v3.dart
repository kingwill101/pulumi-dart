import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_v3_args.dart';

/// Manages a V3 group resource within OpenStack Keystone.
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
/// const group1 = new openstack.identity.GroupV3("group_1", {
///     name: "group_1",
///     description: "group 1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// group1 = openstack.identity.GroupV3("group_1",
///     name="group_1",
///     description="group 1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var group1 = new OpenStack.Identity.GroupV3("group_1", new()
///     {
///         Name = "group_1",
///         Description = "group 1",
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
/// 		_, err := identity.NewGroupV3(ctx, "group_1", &identity.GroupV3Args{
/// 			Name:        pulumi.String("group_1"),
/// 			Description: pulumi.String("group 1"),
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
/// import com.pulumi.openstack.identity.GroupV3;
/// import com.pulumi.openstack.identity.GroupV3Args;
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
///         var group1 = new GroupV3("group1", GroupV3Args.builder()
///             .name("group_1")
///             .description("group 1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   group1:
///     type: openstack:identity:GroupV3
///     name: group_1
///     properties:
///       name: group_1
///       description: group 1
/// ```
///
///
/// ## Import
///
/// groups can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/groupV3:GroupV3 group_1 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class GroupV3 extends pulumi.CustomResource {
  /// A description of the group.
  late final pulumi.Output<String?> description;
  /// The domain the group belongs to.
  late final pulumi.Output<String> domainId;
  /// The name of the group.
  late final pulumi.Output<String> name;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new group.
  late final pulumi.Output<String> region;

  /// Creates a new [GroupV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupV3]. {@macro pulumi_identity_group_v3_group_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupV3(
    String name, {
    GroupV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/groupV3:GroupV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.domainId = registerOutput<String>('domainId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
