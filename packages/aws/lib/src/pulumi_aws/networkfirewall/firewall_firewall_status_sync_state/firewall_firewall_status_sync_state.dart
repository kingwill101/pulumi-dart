// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_firewall_status_sync_state_attachment/firewall_firewall_status_sync_state_attachment.dart';

class FirewallFirewallStatusSyncState {
  /// Nested list describing the attachment status of the firewall's association with a single VPC subnet.
  final List<FirewallFirewallStatusSyncStateAttachment>? attachments;

  /// The Availability Zone where the subnet is configured.
  final String? availabilityZone;

  FirewallFirewallStatusSyncState({
    this.attachments,
    this.availabilityZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentsValue = attachments;
    if (attachmentsValue != null) {
      map['attachments'] = pulumi.Input.encodeList<
          FirewallFirewallStatusSyncStateAttachment,
          Map<String, dynamic>>(attachmentsValue, (value) => value.toMap());
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    return map;
  }

  factory FirewallFirewallStatusSyncState.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatusSyncState(
      attachments: map['attachments'] == null
          ? null
          : pulumi.Input.decodeList<FirewallFirewallStatusSyncStateAttachment>(
              map['attachments'],
              (value) => FirewallFirewallStatusSyncStateAttachment.fromMap(
                  (value as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
    );
  }
}
