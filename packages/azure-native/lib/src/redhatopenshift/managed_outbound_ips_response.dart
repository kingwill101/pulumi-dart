// ignore_for_file: unused_element, unnecessary_cast


/// ManagedOutboundIPs represents the desired managed outbound IPs for the cluster public load balancer.
class ManagedOutboundIPsResponse {
  /// Count represents the desired number of IPv4 outbound IPs created and managed by Azure for the cluster public load balancer.  Allowed values are in the range of 1 - 20.  The default value is 1.
  final int? count;

  /// Creates a new [ManagedOutboundIPsResponse].
  /// [count] Count represents the desired number of IPv4 outbound IPs created and managed by Azure for the cluster public load balancer.  Allowed values are in the range of 1 - 20.  The default value is 1.
  ManagedOutboundIPsResponse({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
    };
  }

  factory ManagedOutboundIPsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOutboundIPsResponse(
      count: map['count'] == null ? null : map['count'] as int,
    );
  }
}

