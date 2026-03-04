// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_load_balancer_args_doc}
class LoadBalancerArgs {
  /// IP Range
  final pulumi.Input<List<String>> addresses;

  /// Advertise Mode
  final pulumi.Input<String> advertiseMode;

  /// The list of BGP peers it should advertise to. Null or empty means to advertise to all peers.
  final pulumi.Input<List<String>>? bgpPeers;

  /// The name of the LoadBalancer
  final pulumi.Input<String>? loadBalancerName;

  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// A dynamic label mapping to select related services. For instance, if you want to create a load balancer only for services with label "a=b", then please specify {"a": "b"} in the field.
  final pulumi.Input<Map<String, String>>? serviceSelector;

  /// Creates a new [LoadBalancerArgs].
  /// [addresses] IP Range
  /// [advertiseMode] Advertise Mode
  /// [bgpPeers] The list of BGP peers it should advertise to. Null or empty means to advertise to all peers.
  /// [loadBalancerName] The name of the LoadBalancer
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [serviceSelector] A dynamic label mapping to select related services. For instance, if you want to create a load balancer only for services with label "a=b", then please specify {"a": "b"} in the field.
  LoadBalancerArgs({
    required this.addresses,
    required this.advertiseMode,
    this.bgpPeers,
    this.loadBalancerName,
    required this.resourceUri,
    this.serviceSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'advertiseMode': advertiseMode,
      'bgpPeers': ?bgpPeers,
      'loadBalancerName': ?loadBalancerName,
      'resourceUri': resourceUri,
      'serviceSelector': ?serviceSelector,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      addresses: pulumi.Input.fromValue(
        (map['addresses'] as List).cast<String>(),
      ),
      advertiseMode: pulumi.Input.fromValue(map['advertiseMode'] as String),
      bgpPeers: (() {
        final guardedValue = map['bgpPeers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loadBalancerName: (() {
        final guardedValue = map['loadBalancerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      serviceSelector: (() {
        final guardedValue = map['serviceSelector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
