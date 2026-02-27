import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_composite_health_check_args.dart';

/// A composite health check resource specifies the health source resources and
/// the health destination resource to which the aggregated health result from
/// the health source resources is delivered.
///
/// To get more information about RegionCompositeHealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionCompositeHealthChecks)
/// * How-to Guides
/// * [Health checks overview](https://cloud.google.com/load-balancing/docs/health-check-concepts)
///
/// ## Example Usage
///
/// ### Compute Region Composite Health Check Basic
///
///
///
///
/// ## Import
///
/// RegionCompositeHealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/compositeHealthChecks/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionCompositeHealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default projects/{{project}}/regions/{{region}}/compositeHealthChecks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck default {{name}}
/// ```
class RegionCompositeHealthCheck extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking. This field will be ignored when
  /// inserting a `CompositeHealthCheck`. An up-to-date fingerprint
  /// must be provided in order to patch the CompositeHealthCheck; Otherwise,
  /// the request will fail with error `412 conditionNotMet`. To see
  /// the latest fingerprint, make a `get()` request to retrieve the
  /// CompositeHealthCheck.
  late final pulumi.Output<String> fingerprint;

  /// URL to the destination resource. Must be set. Must be a
  /// ForwardingRule. The ForwardingRule must have
  /// load balancing scheme INTERNAL or
  /// INTERNAL_MANAGED and must be regional and in the same region
  /// as the CompositeHealthCheck (cross-region deployment for
  /// INTERNAL_MANAGED is not supported). Can be mutated.
  late final pulumi.Output<String> healthDestination;

  /// URLs to the HealthSource resources whose results are AND'ed.
  /// I.e. he aggregated result is is HEALTHY only if all sources
  /// are HEALTHY. Must have at least 1. Must not have more than 10.
  /// Must be regional and in the same region as the
  /// CompositeHealthCheck. Can be mutated.
  late final pulumi.Output<List<String>?> healthSources;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// URL of the region where the composite health check resides.
  late final pulumi.Output<String> region;

  /// Server-defined URL with id for the resource.
  late final pulumi.Output<String> selfLinkWithId;

  RegionCompositeHealthCheck(
    String name, {
    RegionCompositeHealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionCompositeHealthCheck:RegionCompositeHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.healthDestination = registerOutput<String>('healthDestination');
    this.healthSources = registerOutput<List<String>?>('healthSources');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
  }
}
