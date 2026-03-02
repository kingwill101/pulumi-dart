// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_firewall_status_sync_state_attachment.dart';

class GetFirewallFirewallStatusSyncState {
  /// Nested list describing the attachment status of the firewall's association with a single VPC subnet.
  final pulumi.Input<List<GetFirewallFirewallStatusSyncStateAttachment>> attachments;
  /// The Availability Zone where the subnet is configured.
  final pulumi.Input<String> availabilityZone;

  /// Creates a new [GetFirewallFirewallStatusSyncState].
  /// [attachments] Nested list describing the attachment status of the firewall's association with a single VPC subnet.
  /// [availabilityZone] The Availability Zone where the subnet is configured.
  GetFirewallFirewallStatusSyncState({
    required this.attachments,
    required this.availabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.mapInputValue<List<GetFirewallFirewallStatusSyncStateAttachment>, List<Map<String, dynamic>>>(attachments, (value) => pulumi.Input.encodeList<GetFirewallFirewallStatusSyncStateAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZone': availabilityZone,
    };
  }

  factory GetFirewallFirewallStatusSyncState.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusSyncState(
      attachments: (pulumi.Input.decodeList<GetFirewallFirewallStatusSyncStateAttachment>(map['attachments'], (value) => GetFirewallFirewallStatusSyncStateAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
    );
  }
}

