import 'package:pulumi/pulumi.dart';
import 'region_health_source_args.dart';

/// A health source resource specifies the source resources and the health
/// aggregation policy applied to the source resources to determine the
/// aggregated health status.
///
/// To get more information about RegionHealthSource, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionHealthSources)
/// * How-to Guides
/// * [Health checks overview](https://cloud.google.com/load-balancing/docs/health-check-concepts)
///
/// ## Example Usage
///
/// ### Compute Region Health Source Basic
///
///
///
///
/// ## Import
///
/// RegionHealthSource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/healthSources/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionHealthSource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default projects/{{project}}/regions/{{region}}/healthSources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthSource:RegionHealthSource default {{name}}
/// ```
class RegionHealthSource extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  late final Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object.
  /// This field is used in optimistic locking.
  late final Output<String> fingerprint;

  /// URL to the `HealthAggregationPolicy` resource. Must be set. Must
  /// be regional and in the same region as the `HealthSource`. Can be
  /// mutated.
  late final Output<String?> healthAggregationPolicy;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// URL of the region where the health source resides.
  late final Output<String> region;

  /// Server-defined URL with id for the resource.
  late final Output<String> selfLinkWithId;

  /// Specifies the type of the `HealthSource`. The only allowed value
  /// is `BACKEND_SERVICE`. Must be specified when the
  /// `HealthSource` is created, and cannot be mutated.
  /// Possible values are: `BACKEND_SERVICE`.
  late final Output<String> sourceType;

  /// URLs to the source resources. Must be size 1. Must be a
  /// `BackendService` if the `sourceType` is `BACKEND_SERVICE`. The
  /// `BackendService` must have load balancing scheme
  /// `INTERNAL` or `INTERNAL_MANAGED` and must be regional
  /// and in the same region as the `HealthSource` (cross-region
  /// deployment for `INTERNAL_MANAGED` is not supported). The
  /// `BackendService` may use only IGs, MIGs, or NEGs of type
  /// `GCE_VM_IP` or `GCE_VM_IP_PORT`. The
  /// `BackendService` may not use `haPolicy`. Can be
  /// mutated.
  late final Output<String?> sources;

  RegionHealthSource(
    String name, {
    RegionHealthSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthSource:RegionHealthSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.healthAggregationPolicy =
        registerOutput<String?>('healthAggregationPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.sourceType = registerOutput<String>('sourceType');
    this.sources = registerOutput<String?>('sources');
  }
}
