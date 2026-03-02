// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  /// The name of the LoadBalancer
  final pulumi.Input<String> loadBalancerName;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetLoadBalancerArgs].
  /// [loadBalancerName] The name of the LoadBalancer
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetLoadBalancerArgs({
    required this.loadBalancerName,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': loadBalancerName,
      'resourceUri': resourceUri,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      loadBalancerName: (map['loadBalancerName'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}

