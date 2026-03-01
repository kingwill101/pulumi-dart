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
    required pulumi.Output<String> loadBalancerName,
    required pulumi.Output<String> resourceUri,
  }) :
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerName': loadBalancerName,
      'resourceUri': resourceUri,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      loadBalancerName: pulumi.Output.create<String>(map['loadBalancerName'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}

