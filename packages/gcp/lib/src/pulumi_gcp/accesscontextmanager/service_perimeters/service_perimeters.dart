import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_perimeters_service_perimeter/service_perimeters_service_perimeter.dart';
import 'service_perimeters_args.dart';

/// Replace all existing Service Perimeters in an Access Policy with the Service Perimeters provided. This is done atomically.
/// This is a bulk edit of all Service Perimeters and may override existing Service Perimeters created by `gcp.accesscontextmanager.ServicePerimeter`,
/// thus causing a permadiff if used alongside `gcp.accesscontextmanager.ServicePerimeter` on the same parent.
///
///
/// To get more information about ServicePerimeters, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
/// * [Service Perimeter Quickstart](https://cloud.google.com/vpc-service-controls/docs/quickstart)
///
/// ## Example Usage
///
/// ### Access Context Manager Service Perimeters Basic
///
///
///
///
/// ## Import
///
/// ServicePerimeters can be imported using any of these accepted formats:
///
/// * `{{parent}}/servicePerimeters`
///
/// * `{{parent}}`
///
/// When using the `pulumi import` command, ServicePerimeters can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeters:ServicePerimeters default {{parent}}/servicePerimeters
/// ```
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeters:ServicePerimeters default {{parent}}
/// ```
class ServicePerimeters extends pulumi.CustomResource {
  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  late final pulumi.Output<String> parent;

  /// The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.
  /// Structure is documented below.
  late final pulumi.Output<List<ServicePerimetersServicePerimeter>?>
      servicePerimeters;

  ServicePerimeters(
    String name, {
    ServicePerimetersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeters:ServicePerimeters',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.parent = registerOutput<String>('parent');
    this.servicePerimeters =
        registerOutput<List<ServicePerimetersServicePerimeter>?>(
            'servicePerimeters');
  }
}
