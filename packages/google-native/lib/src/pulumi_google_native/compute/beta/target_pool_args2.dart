// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'target_pool_session_affinity2.dart';

/// The set of arguments for TargetPool.
class TargetPoolArgs2 {
  /// The server-defined URL for the resource. This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1]. backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  final Input<String>? backupPool;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1]. If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  final Input<double>? failoverRatio;

  /// The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. Only legacy HttpHealthChecks are supported. Only one health check may be specified.
  final Input<List<String>>? healthChecks;

  /// A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool.
  final Input<List<String>>? instances;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
  final Input<TargetPoolSessionAffinity2>? sessionAffinity;

  TargetPoolArgs2({
    this.backupPool,
    this.description,
    this.failoverRatio,
    this.healthChecks,
    this.instances,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.sessionAffinity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupPoolValue = backupPool;
    if (backupPoolValue != null) {
      map['backupPool'] = backupPoolValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverRatioValue = failoverRatio;
    if (failoverRatioValue != null) {
      map['failoverRatio'] = failoverRatioValue;
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = instancesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] =
          Input.mapOptionalInputValue<TargetPoolSessionAffinity2, String>(
              sessionAffinityValue, (value) => value.value);
    }
    return map;
  }

  factory TargetPoolArgs2.fromMap(Map<String, dynamic> map) {
    return TargetPoolArgs2(
      backupPool: Input.asOptionalInput<String>(map['backupPool']),
      description: Input.asOptionalInput<String>(map['description']),
      failoverRatio: Input.asOptionalInput<double>(map['failoverRatio']),
      healthChecks: Input.asOptionalInput<List<String>>(map['healthChecks']),
      instances: Input.asOptionalInput<List<String>>(map['instances']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      sessionAffinity: Input.asOptionalInput<TargetPoolSessionAffinity2>(
          map['sessionAffinity']),
    );
  }
}
