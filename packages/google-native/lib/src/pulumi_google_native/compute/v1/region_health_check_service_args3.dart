// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'region_health_check_service_health_status_aggregation_policy3.dart';

/// The set of arguments for RegionHealthCheckService.
class RegionHealthCheckServiceArgs3 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// A list of URLs to the HealthCheck resources. Must have at least one HealthCheck, and not more than 10 for regional HealthCheckService, and not more than 1 for global HealthCheckService. HealthCheck resources must have portSpecification=USE_SERVING_PORT or portSpecification=USE_FIXED_PORT. For regional HealthCheckService, the HealthCheck must be regional and in the same region. For global HealthCheckService, HealthCheck must be global. Mix of regional and global HealthChecks is not supported. Multiple regional HealthChecks must belong to the same region. Regional HealthChecks must belong to the same region as zones of NetworkEndpointGroups. For global HealthCheckService using global INTERNET_IP_PORT NetworkEndpointGroups, the global HealthChecks must specify sourceRegions, and HealthChecks that specify sourceRegions can only be used with global INTERNET_IP_PORT NetworkEndpointGroups.
  final Input<List<String>>? healthChecks;

  /// Optional. Policy for how the results from multiple health checks for the same endpoint are aggregated. Defaults to NO_AGGREGATION if unspecified. - NO_AGGREGATION. An EndpointHealth message is returned for each pair in the health check service. - AND. If any health check of an endpoint reports UNHEALTHY, then UNHEALTHY is the HealthState of the endpoint. If all health checks report HEALTHY, the HealthState of the endpoint is HEALTHY. . This is only allowed with regional HealthCheckService.
  final Input<RegionHealthCheckServiceHealthStatusAggregationPolicy3>?
      healthStatusAggregationPolicy;

  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// A list of URLs to the NetworkEndpointGroup resources. Must not have more than 100. For regional HealthCheckService, NEGs must be in zones in the region of the HealthCheckService. For global HealthCheckServices, the NetworkEndpointGroups must be global INTERNET_IP_PORT.
  final Input<List<String>>? networkEndpointGroups;

  /// A list of URLs to the NotificationEndpoint resources. Must not have more than 10. A list of endpoints for receiving notifications of change in health status. For regional HealthCheckService, NotificationEndpoint must be regional and in the same region. For global HealthCheckService, NotificationEndpoint must be global.
  final Input<List<String>>? notificationEndpoints;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  RegionHealthCheckServiceArgs3({
    this.description,
    this.healthChecks,
    this.healthStatusAggregationPolicy,
    this.name,
    this.networkEndpointGroups,
    this.notificationEndpoints,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final healthStatusAggregationPolicyValue = healthStatusAggregationPolicy;
    if (healthStatusAggregationPolicyValue != null) {
      map['healthStatusAggregationPolicy'] = Input.mapOptionalInputValue<
          RegionHealthCheckServiceHealthStatusAggregationPolicy3,
          String>(healthStatusAggregationPolicyValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkEndpointGroupsValue = networkEndpointGroups;
    if (networkEndpointGroupsValue != null) {
      map['networkEndpointGroups'] = networkEndpointGroupsValue;
    }
    final notificationEndpointsValue = notificationEndpoints;
    if (notificationEndpointsValue != null) {
      map['notificationEndpoints'] = notificationEndpointsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory RegionHealthCheckServiceArgs3.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckServiceArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      healthChecks: Input.asOptionalInput<List<String>>(map['healthChecks']),
      healthStatusAggregationPolicy: Input.asOptionalInput<
              RegionHealthCheckServiceHealthStatusAggregationPolicy3>(
          map['healthStatusAggregationPolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      networkEndpointGroups:
          Input.asOptionalInput<List<String>>(map['networkEndpointGroups']),
      notificationEndpoints:
          Input.asOptionalInput<List<String>>(map['notificationEndpoints']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
