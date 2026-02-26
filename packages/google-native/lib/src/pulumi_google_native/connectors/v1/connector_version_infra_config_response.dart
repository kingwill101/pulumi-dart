// ignore_for_file: unused_element, unnecessary_cast

import 'hpaconfig_response.dart';
import 'resource_limits_response.dart';
import 'resource_requests_response.dart';

/// This cofiguration provides infra configs like rate limit threshold which need to be configurable for every connector version
class ConnectorVersionInfraConfigResponse {
  /// The window used for ratelimiting runtime requests to connections.
  final String connectionRatelimitWindowSeconds;

  /// HPA autoscaling config.
  final HPAConfigResponse hpaConfig;

  /// Max QPS supported for internal requests originating from Connd.
  final String internalclientRatelimitThreshold;

  /// Max QPS supported by the connector version before throttling of requests.
  final String ratelimitThreshold;

  /// System resource limits.
  final ResourceLimitsResponse resourceLimits;

  /// System resource requests.
  final ResourceRequestsResponse resourceRequests;

  /// The name of shared connector deployment.
  final String sharedDeployment;

  ConnectorVersionInfraConfigResponse({
    required this.connectionRatelimitWindowSeconds,
    required this.hpaConfig,
    required this.internalclientRatelimitThreshold,
    required this.ratelimitThreshold,
    required this.resourceLimits,
    required this.resourceRequests,
    required this.sharedDeployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionRatelimitWindowSeconds'] = connectionRatelimitWindowSeconds;
    map['hpaConfig'] = hpaConfig.toMap();
    map['internalclientRatelimitThreshold'] = internalclientRatelimitThreshold;
    map['ratelimitThreshold'] = ratelimitThreshold;
    map['resourceLimits'] = resourceLimits.toMap();
    map['resourceRequests'] = resourceRequests.toMap();
    map['sharedDeployment'] = sharedDeployment;
    return map;
  }

  factory ConnectorVersionInfraConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ConnectorVersionInfraConfigResponse(
      connectionRatelimitWindowSeconds:
          map['connectionRatelimitWindowSeconds'] as String,
      hpaConfig: HPAConfigResponse.fromMap(
          (map['hpaConfig'] as Map).cast<String, dynamic>()),
      internalclientRatelimitThreshold:
          map['internalclientRatelimitThreshold'] as String,
      ratelimitThreshold: map['ratelimitThreshold'] as String,
      resourceLimits: ResourceLimitsResponse.fromMap(
          (map['resourceLimits'] as Map).cast<String, dynamic>()),
      resourceRequests: ResourceRequestsResponse.fromMap(
          (map['resourceRequests'] as Map).cast<String, dynamic>()),
      sharedDeployment: map['sharedDeployment'] as String,
    );
  }
}
