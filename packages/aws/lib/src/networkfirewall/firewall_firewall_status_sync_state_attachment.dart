// ignore_for_file: unused_element, unnecessary_cast

class FirewallFirewallStatusSyncStateAttachment {
  /// The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  final String? endpointId;

  /// The unique identifier of the subnet that you've specified to be used for a firewall endpoint.
  final String? subnetId;

  /// Creates a new [FirewallFirewallStatusSyncStateAttachment].
  /// [endpointId] The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  /// [subnetId] The unique identifier of the subnet that you've specified to be used for a firewall endpoint.
  FirewallFirewallStatusSyncStateAttachment({
    this.endpointId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointIdValue = endpointId;
    if (endpointIdValue != null) {
      map['endpointId'] = endpointIdValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory FirewallFirewallStatusSyncStateAttachment.fromMap(
      Map<String, dynamic> map) {
    return FirewallFirewallStatusSyncStateAttachment(
      endpointId:
          map['endpointId'] == null ? null : map['endpointId'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}
