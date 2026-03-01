import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_vpcservice_project_args.dart';

/// Enables the Google Compute Engine
/// [Shared VPC](https://cloud.google.com/compute/docs/shared-vpc)
/// feature for a project, assigning it as a Shared VPC service project associated
/// with a given host project.
///
/// For more information, see,
/// [the Project API documentation](https://cloud.google.com/compute/docs/reference/latest/projects),
/// where the Shared VPC feature is referred to by its former name "XPN".
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const service1 = new gcp.compute.SharedVPCServiceProject("service1", {
///     hostProject: "host-project-id",
///     serviceProject: "service-project-id-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service1 = gcp.compute.SharedVPCServiceProject("service1",
///     host_project="host-project-id",
///     service_project="service-project-id-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service1 = new Gcp.Compute.SharedVPCServiceProject("service1", new()
///     {
///         HostProject = "host-project-id",
///         ServiceProject = "service-project-id-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSharedVPCServiceProject(ctx, "service1", &compute.SharedVPCServiceProjectArgs{
/// 			HostProject:    pulumi.String("host-project-id"),
/// 			ServiceProject: pulumi.String("service-project-id-1"),
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
/// import com.pulumi.gcp.compute.SharedVPCServiceProject;
/// import com.pulumi.gcp.compute.SharedVPCServiceProjectArgs;
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
///         var service1 = new SharedVPCServiceProject("service1", SharedVPCServiceProjectArgs.builder()
///             .hostProject("host-project-id")
///             .serviceProject("service-project-id-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service1:
///     type: gcp:compute:SharedVPCServiceProject
///     properties:
///       hostProject: host-project-id
///       serviceProject: service-project-id-1
/// ```
///
///
/// For a complete Shared VPC example with both host and service projects, see
/// [`gcp.compute.SharedVPCHostProject`](https://www.terraform.io/docs/providers/google/r/compute_shared_vpc_host_project.html).
///
/// ## Import
///
/// Google Compute Engine Shared VPC service project feature can be imported using the `host_project` and `service_project`, e.g.
///
/// * `{{host_project}/{{service_project}}`
///
/// When using the `pulumi import` command, Google Compute Engine Shared VPC service project can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/sharedVPCServiceProject:SharedVPCServiceProject default {{host_project}/{{service_project}}
/// ```
class SharedVPCServiceProject extends pulumi.CustomResource {
  /// The deletion policy for the shared VPC service. Setting ABANDON allows the resource to be abandoned rather than deleted. Possible values are: "ABANDON".
  late final pulumi.Output<String?> deletionPolicy;
  /// The ID of a host project to associate.
  late final pulumi.Output<String> hostProject;
  /// The ID of the project that will serve as a Shared VPC service project.
  late final pulumi.Output<String> serviceProject;

  /// Creates a new [SharedVPCServiceProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedVPCServiceProject]. {@macro pulumi_compute_shared_vpcservice_project_shared_vpcservice_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedVPCServiceProject(
    String name, {
    SharedVPCServiceProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/sharedVPCServiceProject:SharedVPCServiceProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.hostProject = registerOutput<String>('hostProject');
    this.serviceProject = registerOutput<String>('serviceProject');
  }
}
