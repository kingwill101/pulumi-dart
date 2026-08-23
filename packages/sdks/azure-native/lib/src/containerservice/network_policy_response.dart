// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The network policy for the managed namespace.
class NetworkPolicyResponse {
  /// The egress policy for the managed namespace.
  final pulumi.Input<String>? egress;
  /// The ingress policy for the managed namespace.
  final pulumi.Input<String>? ingress;

  /// Creates a new [NetworkPolicyResponse].
  /// [egress] The egress policy for the managed namespace.
  /// [ingress] The ingress policy for the managed namespace.
  const NetworkPolicyResponse({
    this.egress,
    this.ingress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egress': ?egress,
      'ingress': ?ingress,
    };
  }

  factory NetworkPolicyResponse.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyResponse(
      egress: (() { final guardedValue = map['egress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
