import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_health_check_service_compute_v1_args.dart';

/// Creates a regional HealthCheckService resource in the specified project and region using the data included in the request.
class RegionHealthCheckServiceComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a HealthCheckService. An up-to-date fingerprint must be provided in order to patch/update the HealthCheckService; Otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the HealthCheckService.
  late final pulumi.Output<String> fingerprint;
  /// A list of URLs to the HealthCheck resources. Must have at least one HealthCheck, and not more than 10 for regional HealthCheckService, and not more than 1 for global HealthCheckService. HealthCheck resources must have portSpecification=USE_SERVING_PORT or portSpecification=USE_FIXED_PORT. For regional HealthCheckService, the HealthCheck must be regional and in the same region. For global HealthCheckService, HealthCheck must be global. Mix of regional and global HealthChecks is not supported. Multiple regional HealthChecks must belong to the same region. Regional HealthChecks must belong to the same region as zones of NetworkEndpointGroups. For global HealthCheckService using global INTERNET_IP_PORT NetworkEndpointGroups, the global HealthChecks must specify sourceRegions, and HealthChecks that specify sourceRegions can only be used with global INTERNET_IP_PORT NetworkEndpointGroups.
  late final pulumi.Output<List<String>> healthChecks;
  /// Optional. Policy for how the results from multiple health checks for the same endpoint are aggregated. Defaults to NO_AGGREGATION if unspecified. - NO_AGGREGATION. An EndpointHealth message is returned for each pair in the health check service. - AND. If any health check of an endpoint reports UNHEALTHY, then UNHEALTHY is the HealthState of the endpoint. If all health checks report HEALTHY, the HealthState of the endpoint is HEALTHY. . This is only allowed with regional HealthCheckService.
  late final pulumi.Output<String> healthStatusAggregationPolicy;
  /// [Output only] Type of the resource. Always compute#healthCheckServicefor health check services.
  late final pulumi.Output<String> kind;
  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// A list of URLs to the NetworkEndpointGroup resources. Must not have more than 100. For regional HealthCheckService, NEGs must be in zones in the region of the HealthCheckService. For global HealthCheckServices, the NetworkEndpointGroups must be global INTERNET_IP_PORT.
  late final pulumi.Output<List<String>> networkEndpointGroups;
  /// A list of URLs to the NotificationEndpoint resources. Must not have more than 10. A list of endpoints for receiving notifications of change in health status. For regional HealthCheckService, NotificationEndpoint must be regional and in the same region. For global HealthCheckService, NotificationEndpoint must be global.
  late final pulumi.Output<List<String>> notificationEndpoints;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionHealthCheckServiceComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionHealthCheckServiceComputeV1]. {@macro pulumi_compute_v1_region_health_check_service_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionHealthCheckServiceComputeV1(
    String name, {
    RegionHealthCheckServiceComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionHealthCheckService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.healthChecks = registerOutput<List<String>>('healthChecks');
    this.healthStatusAggregationPolicy = registerOutput<String>('healthStatusAggregationPolicy');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.networkEndpointGroups = registerOutput<List<String>>('networkEndpointGroups');
    this.notificationEndpoints = registerOutput<List<String>>('notificationEndpoints');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
