// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTlsCipherPoliciesPolicyRelateListener {
  /// The ID of SLB instance.
  final pulumi.Input<String> loadBalancerId;
  /// Listening port. Valid value: 1 to 65535.
  final pulumi.Input<int> port;
  /// Snooping protocols. Valid values: `TCP`, `UDP`, `HTTP`, or `HTTPS`.
  final pulumi.Input<String> protocol;

  /// Creates a new [GetTlsCipherPoliciesPolicyRelateListener].
  /// [loadBalancerId] The ID of SLB instance.
  /// [port] Listening port. Valid value: 1 to 65535.
  /// [protocol] Snooping protocols. Valid values: `TCP`, `UDP`, `HTTP`, or `HTTPS`.
  GetTlsCipherPoliciesPolicyRelateListener({
    required this.loadBalancerId,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': loadBalancerId,
      'port': port,
      'protocol': protocol,
    };
  }

  factory GetTlsCipherPoliciesPolicyRelateListener.fromMap(Map<String, dynamic> map) {
    return GetTlsCipherPoliciesPolicyRelateListener(
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      port: (map['port'] as int).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

