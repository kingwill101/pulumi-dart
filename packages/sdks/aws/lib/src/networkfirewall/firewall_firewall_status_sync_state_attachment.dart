// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallFirewallStatusSyncStateAttachment {
  /// The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  final pulumi.Input<String>? endpointId;
  /// The unique identifier of the subnet that you've specified to be used for a firewall endpoint.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [FirewallFirewallStatusSyncStateAttachment].
  /// [endpointId] The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  /// [subnetId] The unique identifier of the subnet that you've specified to be used for a firewall endpoint.
  FirewallFirewallStatusSyncStateAttachment({
    this.endpointId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
      'subnetId': ?subnetId,
    };
  }

  factory FirewallFirewallStatusSyncStateAttachment.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatusSyncStateAttachment(
      endpointId: map['endpointId'] == null ? null : (map['endpointId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

