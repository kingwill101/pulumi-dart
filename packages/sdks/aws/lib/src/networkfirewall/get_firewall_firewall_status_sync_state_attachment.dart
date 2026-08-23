// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallFirewallStatusSyncStateAttachment {
  /// The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  final pulumi.Input<String> endpointId;
  /// The current status of the firewall endpoint instantiation in the subnet.
  final pulumi.Input<String> status;
  /// A message providing additional information about the current status.
  final pulumi.Input<String> statusMessage;
  /// The unique identifier for the subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetFirewallFirewallStatusSyncStateAttachment].
  /// [endpointId] The identifier of the firewall endpoint that AWS Network Firewall has instantiated in the subnet. You use this to identify the firewall endpoint in the VPC route tables, when you redirect the VPC traffic through the endpoint.
  /// [status] The current status of the firewall endpoint instantiation in the subnet.
  /// [statusMessage] A message providing additional information about the current status.
  /// [subnetId] The unique identifier for the subnet.
  const GetFirewallFirewallStatusSyncStateAttachment({
    required this.endpointId,
    required this.status,
    required this.statusMessage,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'status': status,
      'statusMessage': statusMessage,
      'subnetId': subnetId,
    };
  }

  factory GetFirewallFirewallStatusSyncStateAttachment.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusSyncStateAttachment(
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
