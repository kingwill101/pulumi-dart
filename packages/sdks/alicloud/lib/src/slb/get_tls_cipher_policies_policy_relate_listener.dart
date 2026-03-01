// ignore_for_file: unused_element, unnecessary_cast


class GetTlsCipherPoliciesPolicyRelateListener {
  /// The ID of SLB instance.
  final String loadBalancerId;
  /// Listening port. Valid value: 1 to 65535.
  final int port;
  /// Snooping protocols. Valid values: `TCP`, `UDP`, `HTTP`, or `HTTPS`.
  final String protocol;

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
      loadBalancerId: map['loadBalancerId'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
    );
  }
}

