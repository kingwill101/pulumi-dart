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
  NetworkPolicyResponse({
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
      egress: map['egress'] == null ? null : (map['egress']! as String).input(),
      ingress: map['ingress'] == null ? null : (map['ingress']! as String).input(),
    );
  }
}

