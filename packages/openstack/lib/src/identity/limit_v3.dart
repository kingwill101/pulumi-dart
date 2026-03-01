import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_v3_args.dart';

/// Manages a V3 Limit resource within OpenStack Keystone.
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
/// const glance = openstack.identity.getService({
///     name: "glance",
/// });
/// const project1 = new openstack.identity.Project("project_1", {name: "project_1"});
/// const limit1 = new openstack.identity.LimitV3("limit_1", {
///     projectId: project1.id,
///     serviceId: glance.then(glance => glance.id),
///     resourceName: "image_count_total",
///     resourceLimit: 10,
///     description: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// glance = openstack.identity.get_service(name="glance")
/// project1 = openstack.identity.Project("project_1", name="project_1")
/// limit1 = openstack.identity.LimitV3("limit_1",
///     project_id=project1.id,
///     service_id=glance.id,
///     resource_name_="image_count_total",
///     resource_limit=10,
///     description="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var glance = OpenStack.Identity.GetService.Invoke(new()
///     {
///         Name = "glance",
///     });
///
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "project_1",
///     });
///
///     var limit1 = new OpenStack.Identity.LimitV3("limit_1", new()
///     {
///         ProjectId = project1.Id,
///         ServiceId = glance.Apply(getServiceResult => getServiceResult.Id),
///         ResourceName = "image_count_total",
///         ResourceLimit = 10,
///         Description = "foo",
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
/// 		glance, err := identity.GetService(ctx, &identity.GetServiceArgs{
/// 			Name: pulumi.StringRef("glance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("project_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewLimitV3(ctx, "limit_1", &identity.LimitV3Args{
/// 			ProjectId:     project1.ID(),
/// 			ServiceId:     pulumi.String(glance.Id),
/// 			ResourceName:  pulumi.String("image_count_total"),
/// 			ResourceLimit: pulumi.Int(10),
/// 			Description:   pulumi.String("foo"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetServiceArgs;
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.identity.LimitV3;
/// import com.pulumi.openstack.identity.LimitV3Args;
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
///         final var glance = IdentityFunctions.getService(GetServiceArgs.builder()
///             .name("glance")
///             .build());
///
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("project_1")
///             .build());
///
///         var limit1 = new LimitV3("limit1", LimitV3Args.builder()
///             .projectId(project1.id())
///             .serviceId(glance.id())
///             .resourceName("image_count_total")
///             .resourceLimit(10)
///             .description("foo")
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
///   limit1:
///     type: openstack:identity:LimitV3
///     name: limit_1
///     properties:
///       projectId: ${project1.id}
///       serviceId: ${glance.id}
///       resourceName: image_count_total
///       resourceLimit: 10
///       description: foo
/// variables:
///   glance:
///     fn::invoke:
///       function: openstack:identity:getService
///       arguments:
///         name: glance
/// ```
///
///
/// ## Import
///
/// Limits can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:identity/limitV3:LimitV3 limit_1 89c60255-9bd6-460c-822a-e2b959ede9d2
/// ```
class LimitV3 extends pulumi.CustomResource {
  /// Description of the limit.
  late final pulumi.Output<String?> description;
  /// The domain the limit applies to. Changing this
  /// creates a new Limit.
  late final pulumi.Output<String> domainId;
  /// The project the limit applies to. Changing this
  /// creates a new Limit.
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Limit.
  late final pulumi.Output<String> region;
  /// Integer for the actual limit.
  late final pulumi.Output<int> resourceLimit;
  /// The resource that the limit applies to. Changing
  /// this creates a new Limit.
  late final pulumi.Output<String> resourceName;
  /// The service the limit applies to. Changing this
  /// creates a new Limit.
  late final pulumi.Output<String> serviceId;

  /// Creates a new [LimitV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LimitV3]. {@macro pulumi_identity_limit_v3_limit_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LimitV3(
    String name, {
    LimitV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/limitV3:LimitV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.domainId = registerOutput<String>('domainId');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.resourceLimit = registerOutput<int>('resourceLimit');
    this.resourceName = registerOutput<String>('resourceName');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
