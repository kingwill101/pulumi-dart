import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';

/// Manages a V3 Project resource within OpenStack Keystone.
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
/// const project1 = new openstack.identity.Project("project_1", {
///     name: "project_1",
///     description: "A project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1",
///     name="project_1",
///     description="A project")
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
///         Description = "A project",
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
/// 		_, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name:        pulumi.String("project_1"),
/// 			Description: pulumi.String("A project"),
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
///             .description("A project")
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
///       description: A project
/// ```
///
///
/// ## Import
///
/// Projects can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/project:Project project_1 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class Project extends pulumi.CustomResource {
  /// A description of the project.
  late final pulumi.Output<String?> description;
  /// The domain this project belongs to.
  late final pulumi.Output<String> domainId;
  /// Whether the project is enabled or disabled. Valid
  /// values are `true` and `false`. Default is `true`.
  late final pulumi.Output<bool?> enabled;
  /// Whether this project is a domain. Valid values
  /// are `true` and `false`. Default is `false`. Changing this creates a new
  /// project/domain.
  late final pulumi.Output<bool?> isDomain;
  /// The name of the project.
  late final pulumi.Output<String> name;
  /// The parent of this project. Changing this creates
  /// a new project.
  late final pulumi.Output<String> parentId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new project.
  late final pulumi.Output<String> region;
  /// Tags for the project. Changing this updates the existing
  /// project.
  late final pulumi.Output<List<String>?> tags;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_identity_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.domainId = registerOutput<String>('domainId');
    this.enabled = registerOutput<bool?>('enabled');
    this.isDomain = registerOutput<bool?>('isDomain');
    this.name = registerOutput<String>('name');
    this.parentId = registerOutput<String>('parentId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<List<String>?>('tags');
  }
}
