// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegionHealthCheckService.
class GetRegionHealthCheckServiceComputeV1Result {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a HealthCheckService. An up-to-date fingerprint must be provided in order to patch/update the HealthCheckService; Otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the HealthCheckService.
  final String fingerprint;

  /// A list of URLs to the HealthCheck resources. Must have at least one HealthCheck, and not more than 10 for regional HealthCheckService, and not more than 1 for global HealthCheckService. HealthCheck resources must have portSpecification=USE_SERVING_PORT or portSpecification=USE_FIXED_PORT. For regional HealthCheckService, the HealthCheck must be regional and in the same region. For global HealthCheckService, HealthCheck must be global. Mix of regional and global HealthChecks is not supported. Multiple regional HealthChecks must belong to the same region. Regional HealthChecks must belong to the same region as zones of NetworkEndpointGroups. For global HealthCheckService using global INTERNET_IP_PORT NetworkEndpointGroups, the global HealthChecks must specify sourceRegions, and HealthChecks that specify sourceRegions can only be used with global INTERNET_IP_PORT NetworkEndpointGroups.
  final List<String> healthChecks;

  /// Optional. Policy for how the results from multiple health checks for the same endpoint are aggregated. Defaults to NO_AGGREGATION if unspecified. - NO_AGGREGATION. An EndpointHealth message is returned for each pair in the health check service. - AND. If any health check of an endpoint reports UNHEALTHY, then UNHEALTHY is the HealthState of the endpoint. If all health checks report HEALTHY, the HealthState of the endpoint is HEALTHY. . This is only allowed with regional HealthCheckService.
  final String healthStatusAggregationPolicy;

  /// [Output only] Type of the resource. Always compute#healthCheckServicefor health check services.
  final String kind;

  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// A list of URLs to the NetworkEndpointGroup resources. Must not have more than 100. For regional HealthCheckService, NEGs must be in zones in the region of the HealthCheckService. For global HealthCheckServices, the NetworkEndpointGroups must be global INTERNET_IP_PORT.
  final List<String> networkEndpointGroups;

  /// A list of URLs to the NotificationEndpoint resources. Must not have more than 10. A list of endpoints for receiving notifications of change in health status. For regional HealthCheckService, NotificationEndpoint must be regional and in the same region. For global HealthCheckService, NotificationEndpoint must be global.
  final List<String> notificationEndpoints;

  /// URL of the region where the health check service resides. This field is not applicable to global health check services. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  GetRegionHealthCheckServiceComputeV1Result({
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.healthChecks,
    required this.healthStatusAggregationPolicy,
    required this.kind,
    required this.name,
    required this.networkEndpointGroups,
    required this.notificationEndpoints,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['healthChecks'] = healthChecks;
    map['healthStatusAggregationPolicy'] = healthStatusAggregationPolicy;
    map['kind'] = kind;
    map['name'] = name;
    map['networkEndpointGroups'] = networkEndpointGroups;
    map['notificationEndpoints'] = notificationEndpoints;
    map['region'] = region;
    map['selfLink'] = selfLink;
    return map;
  }

  factory GetRegionHealthCheckServiceComputeV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceComputeV1Result(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      healthChecks: (map['healthChecks'] as List).cast<String>(),
      healthStatusAggregationPolicy:
          map['healthStatusAggregationPolicy'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      networkEndpointGroups:
          (map['networkEndpointGroups'] as List).cast<String>(),
      notificationEndpoints:
          (map['notificationEndpoints'] as List).cast<String>(),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
