// ignore_for_file: unused_element, unnecessary_cast

class SecurityGatewayHubInternetGateway {
  /// (Output)
  /// Output only. List of IP addresses assigned to the Cloud NAT.
  final List<String>? assignedIps;

  SecurityGatewayHubInternetGateway({
    this.assignedIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assignedIpsValue = assignedIps;
    if (assignedIpsValue != null) {
      map['assignedIps'] = assignedIpsValue;
    }
    return map;
  }

  factory SecurityGatewayHubInternetGateway.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayHubInternetGateway(
      assignedIps: map['assignedIps'] == null
          ? null
          : (map['assignedIps'] as List).cast<String>(),
    );
  }
}
