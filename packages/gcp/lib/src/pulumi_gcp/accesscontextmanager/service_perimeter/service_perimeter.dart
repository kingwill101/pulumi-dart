import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_perimeter_spec/service_perimeter_spec.dart';
import '../service_perimeter_status/service_perimeter_status.dart';
import 'service_perimeter_args.dart';

/// ServicePerimeter describes a set of GCP resources which can freely import
/// and export data amongst themselves, but not export outside of the
/// ServicePerimeter. If a request with a source within this ServicePerimeter
/// has a target outside of the ServicePerimeter, the request will be blocked.
/// Otherwise the request is allowed. There are two types of Service Perimeter
/// - Regular and Bridge. Regular Service Perimeters cannot overlap, a single
/// GCP project can only belong to a single regular Service Perimeter. Service
/// Perimeter Bridges can contain only GCP projects as members, a single GCP
/// project may belong to multiple Service Perimeter Bridges.
///
///
/// To get more information about ServicePerimeter, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
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
/// ### Access Context Manager Service Perimeter Basic
///
///
///
/// ### Access Context Manager Service Perimeter Secure Data Exchange
///
///
///
/// ### Access Context Manager Service Perimeter Dry-Run
///
///
///
/// ## Import
///
/// ServicePerimeter can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ServicePerimeter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeter:ServicePerimeter default {{name}}
/// ```
class ServicePerimeter extends pulumi.CustomResource {
  /// Time the AccessPolicy was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Description of the ServicePerimeter and its use. Does not affect
  /// behavior.
  late final pulumi.Output<String?> description;

  /// Resource name for the ServicePerimeter. The short_name component must
  /// begin with a letter and only include alphanumeric and '_'.
  /// Format: accessPolicies/{policy_id}/servicePerimeters/{short_name}
  late final pulumi.Output<String> name;

  /// The AccessPolicy this ServicePerimeter lives in.
  /// Format: accessPolicies/{policy_id}
  late final pulumi.Output<String> parent;

  /// Specifies the type of the Perimeter. There are two types: regular and
  /// bridge. Regular Service Perimeter contains resources, access levels,
  /// and restricted services. Every resource can be in at most
  /// ONE regular Service Perimeter.
  /// In addition to being in a regular service perimeter, a resource can also
  /// be in zero or more perimeter bridges. A perimeter bridge only contains
  /// resources. Cross project operations are permitted if all effected
  /// resources share some perimeter (whether bridge or regular). Perimeter
  /// Bridge does not contain access levels or services: those are governed
  /// entirely by the regular perimeter that resource is in.
  /// Perimeter Bridges are typically useful when building more complex
  /// topologies with many independent perimeters that need to share some data
  /// with a common perimeter, but should not be able to share data among
  /// themselves.
  /// Default value is `PERIMETER_TYPE_REGULAR`.
  /// Possible values are: `PERIMETER_TYPE_REGULAR`, `PERIMETER_TYPE_BRIDGE`.
  late final pulumi.Output<String?> perimeterType;

  /// Proposed (or dry run) ServicePerimeter configuration.
  /// This configuration allows to specify and test ServicePerimeter configuration
  /// without enforcing actual access restrictions. Only allowed to be set when
  /// the `useExplicitDryRunSpec` flag is set.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterSpec?> spec;

  /// ServicePerimeter configuration. Specifies sets of resources,
  /// restricted services and access levels that determine
  /// perimeter content and boundaries.
  /// Structure is documented below.
  late final pulumi.Output<ServicePerimeterStatus?> status;

  /// Human readable title. Must be unique within the Policy.
  late final pulumi.Output<String> title;

  /// Time the AccessPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists
  /// for all Service Perimeters, and that spec is identical to the status for those
  /// Service Perimeters. When this flag is set, it inhibits the generation of the
  /// implicit spec, thereby allowing the user to explicitly provide a
  /// configuration ("spec") to use in a dry-run version of the Service Perimeter.
  /// This allows the user to test changes to the enforced config ("status") without
  /// actually enforcing them. This testing is done through analyzing the differences
  /// between currently enforced and suggested restrictions. useExplicitDryRunSpec must
  /// bet set to True if any of the fields in the spec are set to non-default values.
  late final pulumi.Output<bool?> useExplicitDryRunSpec;

  ServicePerimeter(
    String name, {
    ServicePerimeterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeter:ServicePerimeter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.perimeterType = registerOutput<String?>('perimeterType');
    this.spec = registerOutput<ServicePerimeterSpec?>('spec');
    this.status = registerOutput<ServicePerimeterStatus?>('status');
    this.title = registerOutput<String>('title');
    this.updateTime = registerOutput<String>('updateTime');
    this.useExplicitDryRunSpec = registerOutput<bool?>('useExplicitDryRunSpec');
  }
}
