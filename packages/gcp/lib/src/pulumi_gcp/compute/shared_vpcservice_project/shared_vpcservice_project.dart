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
