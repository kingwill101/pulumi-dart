import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_resource_args.dart';

/// Allows configuring a single GCP resource that should be inside the `status` block of a service perimeter.
/// This resource is intended to be used in cases where it is not possible to compile a full list
/// of projects to include in a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// to enable them to be added separately.
/// If your perimeter is in dry-run mode use `gcp.accesscontextmanager.ServicePerimeterDryRunResource` instead.
///
/// > **Note:** If this resource is used alongside a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// the service perimeter resource must have a `lifecycle` block with `ignore_changes = [status[0].resources]` so
/// they don't fight over which resources should be in the policy.
///
///
/// To get more information about ServicePerimeterResource, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Service Perimeter Quickstart](https://cloud.google.com/vpc-service-controls/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Service Perimeter Resource Basic
///
///
///
///
/// ## Import
///
/// ServicePerimeterResource can be imported using any of these accepted formats:
///
/// * `{{perimeter_name}}/{{resource}}`
///
/// When using the `pulumi import` command, ServicePerimeterResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeterResource:ServicePerimeterResource default {{perimeter_name}}/{{resource}}
/// ```
class ServicePerimeterResource extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;

  /// The perimeter etag is internally used to prevent overwriting the list of perimeter resources on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of resources. The resource to add or remove is merged into that list and then this etag is sent with the PATCH call along with the updated resource list.
  late final pulumi.Output<String> etag;

  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> perimeterName;

  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  late final pulumi.Output<String> resource;

  ServicePerimeterResource(
    String name, {
    ServicePerimeterResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterResource:ServicePerimeterResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.etag = registerOutput<String>('etag');
    this.perimeterName = registerOutput<String>('perimeterName');
    this.resource = registerOutput<String>('resource');
  }
}
