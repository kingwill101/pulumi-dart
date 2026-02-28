// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_pool_session_affinity.dart';

/// {@template pulumi_compute_alpha_target_pool_args_doc}
/// The set of arguments for TargetPool.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_target_pool_args_doc}
class TargetPoolArgs {
  /// The server-defined URL for the resource. This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1]. backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  final pulumi.Input<String>? backupPool;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1]. If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  final pulumi.Input<double>? failoverRatio;
  /// The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. Only legacy HttpHealthChecks are supported. Only one health check may be specified.
  final pulumi.Input<List<String>>? healthChecks;
  /// A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool.
  final pulumi.Input<List<String>>? instances;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
  final pulumi.Input<TargetPoolSessionAffinity>? sessionAffinity;

  /// Creates a new [TargetPoolArgs].
  /// [backupPool] The server-defined URL for the resource. This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1]. backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [failoverRatio] This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1]. If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  /// [healthChecks] The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. Only legacy HttpHealthChecks are supported. Only one health check may be specified.
  /// [instances] A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sessionAffinity] Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
  TargetPoolArgs({
    String? backupPool,
    String? description,
    double? failoverRatio,
    List<String>? healthChecks,
    List<String>? instances,
    String? name,
    String? project,
    required String region,
    String? requestId,
    TargetPoolSessionAffinity? sessionAffinity,
  }) :
      backupPool = pulumi.Input.asOptionalInput<String>(backupPool),
      description = pulumi.Input.asOptionalInput<String>(description),
      failoverRatio = pulumi.Input.asOptionalInput<double>(failoverRatio),
      healthChecks = pulumi.Input.asOptionalInput<List<String>>(healthChecks),
      instances = pulumi.Input.asOptionalInput<List<String>>(instances),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      sessionAffinity = pulumi.Input.asOptionalInput<TargetPoolSessionAffinity>(sessionAffinity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPool': ?backupPool,
      'description': ?description,
      'failoverRatio': ?failoverRatio,
      'healthChecks': ?healthChecks,
      'instances': ?instances,
      'name': ?name,
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'sessionAffinity': ?pulumi.Input.mapOptionalInputValue<TargetPoolSessionAffinity, String>(sessionAffinity, (value) => value.value),
    };
  }

  factory TargetPoolArgs.fromMap(Map<String, dynamic> map) {
    return TargetPoolArgs(
      backupPool: map['backupPool'] == null ? null : map['backupPool'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      failoverRatio: map['failoverRatio'] == null ? null : map['failoverRatio'] as double,
      healthChecks: map['healthChecks'] == null ? null : (map['healthChecks'] as List).cast<String>(),
      instances: map['instances'] == null ? null : (map['instances'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sessionAffinity: map['sessionAffinity'] == null ? null : TargetPoolSessionAffinity.fromValue(map['sessionAffinity'] as String),
    );
  }
}

