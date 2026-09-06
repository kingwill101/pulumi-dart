// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Default network policy of the namespace, specifying ingress and egress rules.
class NetworkPolicies {
  /// Egress policy for the network.
  final pulumi.Input<dynamic>? egress;
  /// Ingress policy for the network.
  final pulumi.Input<dynamic>? ingress;

  /// Creates a new [NetworkPolicies].
  /// [egress] Egress policy for the network.
  /// [ingress] Ingress policy for the network.
  NetworkPolicies({
    pulumi.Input<dynamic>? egress,
    pulumi.Input<dynamic>? ingress,
  }) : egress = egress ?? pulumi.Input.fromValue('AllowAll'), ingress = ingress ?? pulumi.Input.fromValue('AllowSameNamespace');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egress': ?egress,
      'ingress': ?ingress,
    };
  }

  factory NetworkPolicies.fromMap(Map<String, dynamic> map) {
    return NetworkPolicies(
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
