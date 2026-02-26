// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityGatewayHubInternetGateway {
  /// Output only. List of IP addresses assigned to the Cloud NAT.
  final List<String> assignedIps;

  GetSecurityGatewayHubInternetGateway({
    required this.assignedIps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignedIps'] = assignedIps;
    return map;
  }

  factory GetSecurityGatewayHubInternetGateway.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayHubInternetGateway(
      assignedIps: (map['assignedIps'] as List).cast<String>(),
    );
  }
}
