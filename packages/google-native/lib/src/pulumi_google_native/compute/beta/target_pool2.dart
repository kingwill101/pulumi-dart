import 'package:pulumi/pulumi.dart';
import 'target_pool_args2.dart';

/// Creates a target pool in the specified project and region using the data included in the request.
class TargetPool2 extends CustomResource {
  /// The server-defined URL for the resource. This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1]. backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  late final Output<String> backupPool;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1]. If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool. In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
  late final Output<double> failoverRatio;

  /// The URL of the HttpHealthCheck resource. A member instance in this pool is considered healthy if and only if the health checks pass. Only legacy HttpHealthChecks are supported. Only one health check may be specified.
  late final Output<List<String>> healthChecks;

  /// A list of resource URLs to the virtual machine instances serving this pool. They must live in zones contained in the same region as this pool.
  late final Output<List<String>> instances;

  /// Type of the resource. Always compute#targetPool for target pools.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The resource URL for the security policy associated with this target pool.
  late final Output<String> securityPolicy;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Session affinity option, must be one of the following values: NONE: Connections from the same client IP may go to any instance in the pool. CLIENT_IP: Connections from the same client IP will go to the same instance in the pool while that instance remains healthy. CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol will go to the same instance in the pool while that instance remains healthy.
  late final Output<String> sessionAffinity;

  TargetPool2(
    String name, {
    TargetPoolArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:TargetPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupPool = registerOutput<String>('backupPool');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.failoverRatio = registerOutput<double>('failoverRatio');
    this.healthChecks = registerOutput<List<String>>('healthChecks');
    this.instances = registerOutput<List<String>>('instances');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.securityPolicy = registerOutput<String>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.sessionAffinity = registerOutput<String>('sessionAffinity');
  }
}
