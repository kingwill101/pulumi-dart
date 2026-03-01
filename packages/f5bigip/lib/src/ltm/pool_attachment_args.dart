// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_pool_attachment_pool_attachment_args_doc}
/// The set of arguments for PoolAttachment.
/// {@endtemplate}
/// {@macro pulumi_ltm_pool_attachment_pool_attachment_args_doc}
class PoolAttachmentArgs {
  /// Specifies a maximum established connection limit for a pool member or node.The default is 0, meaning that there is no limit to the number of connections.
  final pulumi.Input<int>? connectionLimit;
  /// Specifies the maximum number of connections-per-second allowed for a pool member,The default is 0.
  final pulumi.Input<String>? connectionRateLimit;
  /// Specifies the fixed ratio value used for a node during ratio load balancing.
  final pulumi.Input<int>? dynamicRatio;
  /// Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN. The default is enabled
  final pulumi.Input<String>? fqdnAutopopulate;
  /// Specifies the health monitors that the system uses to monitor this pool member,value can be `none` (or) `default` (or) list of monitors joined with and ( ex: `/Common/test_monitor_pa_tc1 and /Common/gateway_icmp`).
  final pulumi.Input<String>? monitor;
  /// Pool member address/fqdn with service port, (ex: `1.1.1.1:80/www.google.com:80`). (Note: Member will be in same partition of Pool)
  final pulumi.Input<String> node;
  /// Name of the pool to which members should be attached,it should be "full path".The full path is the combination of the partition + name of the pool.(For example `/Common/my-pool`) or partition + directory + name of the pool (For example `/Common/test/my-pool`).When including directory in fullpath we have to make sure it is created in the given partition before using it.
  final pulumi.Input<String> pool;
  /// Specifies a number representing the priority group for the pool member. The default is 0, meaning that the member has no priority
  final pulumi.Input<int>? priorityGroup;
  /// "Specifies the ratio weight to assign to the pool member. Valid values range from 1 through 65535. The default is 1, which means that each pool member has an equal ratio proportion.".
  final pulumi.Input<int>? ratio;
  /// Specifies the state the pool member should be in,value can be `enabled` (or) `disabled` (or) `forced_offline`).
  final pulumi.Input<String>? state;

  /// Creates a new [PoolAttachmentArgs].
  /// [connectionLimit] Specifies a maximum established connection limit for a pool member or node.The default is 0, meaning that there is no limit to the number of connections.
  /// [connectionRateLimit] Specifies the maximum number of connections-per-second allowed for a pool member,The default is 0.
  /// [dynamicRatio] Specifies the fixed ratio value used for a node during ratio load balancing.
  /// [fqdnAutopopulate] Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN. The default is enabled
  /// [monitor] Specifies the health monitors that the system uses to monitor this pool member,value can be `none` (or) `default` (or) list of monitors joined with and ( ex: `/Common/test_monitor_pa_tc1 and /Common/gateway_icmp`).
  /// [node] Pool member address/fqdn with service port, (ex: `1.1.1.1:80/www.google.com:80`). (Note: Member will be in same partition of Pool)
  /// [pool] Name of the pool to which members should be attached,it should be "full path".The full path is the combination of the partition + name of the pool.(For example `/Common/my-pool`) or partition + directory + name of the pool (For example `/Common/test/my-pool`).When including directory in fullpath we have to make sure it is created in the given partition before using it.
  /// [priorityGroup] Specifies a number representing the priority group for the pool member. The default is 0, meaning that the member has no priority
  /// [ratio] "Specifies the ratio weight to assign to the pool member. Valid values range from 1 through 65535. The default is 1, which means that each pool member has an equal ratio proportion.".
  /// [state] Specifies the state the pool member should be in,value can be `enabled` (or) `disabled` (or) `forced_offline`).
  PoolAttachmentArgs({
    int? connectionLimit,
    String? connectionRateLimit,
    int? dynamicRatio,
    String? fqdnAutopopulate,
    String? monitor,
    required String node,
    required String pool,
    int? priorityGroup,
    int? ratio,
    String? state,
  }) :
      connectionLimit = pulumi.Input.asOptionalInput<int>(connectionLimit),
      connectionRateLimit = pulumi.Input.asOptionalInput<String>(connectionRateLimit),
      dynamicRatio = pulumi.Input.asOptionalInput<int>(dynamicRatio),
      fqdnAutopopulate = pulumi.Input.asOptionalInput<String>(fqdnAutopopulate),
      monitor = pulumi.Input.asOptionalInput<String>(monitor),
      node = pulumi.Input.asInput<String>(node),
      pool = pulumi.Input.asInput<String>(pool),
      priorityGroup = pulumi.Input.asOptionalInput<int>(priorityGroup),
      ratio = pulumi.Input.asOptionalInput<int>(ratio),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionLimit': ?connectionLimit,
      'connectionRateLimit': ?connectionRateLimit,
      'dynamicRatio': ?dynamicRatio,
      'fqdnAutopopulate': ?fqdnAutopopulate,
      'monitor': ?monitor,
      'node': node,
      'pool': pool,
      'priorityGroup': ?priorityGroup,
      'ratio': ?ratio,
      'state': ?state,
    };
  }

  factory PoolAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PoolAttachmentArgs(
      connectionLimit: map['connectionLimit'] == null ? null : map['connectionLimit'] as int,
      connectionRateLimit: map['connectionRateLimit'] == null ? null : map['connectionRateLimit'] as String,
      dynamicRatio: map['dynamicRatio'] == null ? null : map['dynamicRatio'] as int,
      fqdnAutopopulate: map['fqdnAutopopulate'] == null ? null : map['fqdnAutopopulate'] as String,
      monitor: map['monitor'] == null ? null : map['monitor'] as String,
      node: map['node'] as String,
      pool: map['pool'] as String,
      priorityGroup: map['priorityGroup'] == null ? null : map['priorityGroup'] as int,
      ratio: map['ratio'] == null ? null : map['ratio'] as int,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

