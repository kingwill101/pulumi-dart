// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallFirewallStatusSyncStateAttachment {
  /// The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  final String endpointId;

  /// The current status of the firewall endpoint instantiation in the subnet.
  final String status;

  /// A message providing additional information about the current status.
  final String statusMessage;

  /// The unique identifier for the subnet.
  final String subnetId;

  GetFirewallFirewallStatusSyncStateAttachment({
    required this.endpointId,
    required this.status,
    required this.statusMessage,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointId'] = endpointId;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['subnetId'] = subnetId;
    return map;
  }

  factory GetFirewallFirewallStatusSyncStateAttachment.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallFirewallStatusSyncStateAttachment(
      endpointId: map['endpointId'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}
