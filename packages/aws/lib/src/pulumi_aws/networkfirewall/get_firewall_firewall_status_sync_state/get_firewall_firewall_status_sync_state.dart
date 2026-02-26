// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_firewall_firewall_status_sync_state_attachment/get_firewall_firewall_status_sync_state_attachment.dart';

class GetFirewallFirewallStatusSyncState {
  /// Nested list describing the attachment status of the firewall's association with a single VPC subnet.
  final List<GetFirewallFirewallStatusSyncStateAttachment> attachments;

  /// The Availability Zone where the subnet is configured.
  final String availabilityZone;

  GetFirewallFirewallStatusSyncState({
    required this.attachments,
    required this.availabilityZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachments'] = Input.encodeList<
        GetFirewallFirewallStatusSyncStateAttachment,
        Map<String, dynamic>>(attachments, (value) => value.toMap());
    map['availabilityZone'] = availabilityZone;
    return map;
  }

  factory GetFirewallFirewallStatusSyncState.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusSyncState(
      attachments:
          Input.decodeList<GetFirewallFirewallStatusSyncStateAttachment>(
              map['attachments'],
              (value) => GetFirewallFirewallStatusSyncStateAttachment.fromMap(
                  (value as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] as String,
    );
  }
}
