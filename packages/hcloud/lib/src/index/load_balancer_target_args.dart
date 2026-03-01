// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_load_balancer_target_load_balancer_target_args_doc}
/// The set of arguments for LoadBalancerTarget.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_target_load_balancer_target_args_doc}
class LoadBalancerTargetArgs {
  /// IP address for an IP Target. Required if
  /// `type` is `ip`.
  final pulumi.Input<String>? ip;
  /// Label Selector selecting targets
  /// for this Load Balancer. Required if `type` is `label_selector`.
  final pulumi.Input<String>? labelSelector;
  /// ID of the Load Balancer to which
  /// the target gets attached.
  final pulumi.Input<int> loadBalancerId;
  /// ID of the server which should be a
  /// target for this Load Balancer. Required if `type` is `server`
  final pulumi.Input<int>? serverId;
  /// Type of the target. Possible values
  /// `server`, `label_selector`, `ip`.
  final pulumi.Input<String> type;
  /// use the private IP to connect to
  /// Load Balancer targets. Only allowed if type is `server` or
  /// `label_selector`.
  final pulumi.Input<bool>? usePrivateIp;

  /// Creates a new [LoadBalancerTargetArgs].
  /// [ip] IP address for an IP Target. Required if
  /// [labelSelector] Label Selector selecting targets
  /// [loadBalancerId] ID of the Load Balancer to which
  /// [serverId] ID of the server which should be a
  /// [type] Type of the target. Possible values
  /// [usePrivateIp] use the private IP to connect to
  LoadBalancerTargetArgs({
    String? ip,
    String? labelSelector,
    required int loadBalancerId,
    int? serverId,
    required String type,
    bool? usePrivateIp,
  }) :
      ip = pulumi.Input.asOptionalInput<String>(ip),
      labelSelector = pulumi.Input.asOptionalInput<String>(labelSelector),
      loadBalancerId = pulumi.Input.asInput<int>(loadBalancerId),
      serverId = pulumi.Input.asOptionalInput<int>(serverId),
      type = pulumi.Input.asInput<String>(type),
      usePrivateIp = pulumi.Input.asOptionalInput<bool>(usePrivateIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'labelSelector': ?labelSelector,
      'loadBalancerId': loadBalancerId,
      'serverId': ?serverId,
      'type': type,
      'usePrivateIp': ?usePrivateIp,
    };
  }

  factory LoadBalancerTargetArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerTargetArgs(
      ip: map['ip'] == null ? null : map['ip'] as String,
      labelSelector: map['labelSelector'] == null ? null : map['labelSelector'] as String,
      loadBalancerId: map['loadBalancerId'] as int,
      serverId: map['serverId'] == null ? null : map['serverId'] as int,
      type: map['type'] as String,
      usePrivateIp: map['usePrivateIp'] == null ? null : map['usePrivateIp'] as bool,
    );
  }
}

