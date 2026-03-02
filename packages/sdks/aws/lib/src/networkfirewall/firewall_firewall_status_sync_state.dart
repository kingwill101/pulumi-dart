// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_firewall_status_sync_state_attachment.dart';

class FirewallFirewallStatusSyncState {
  /// Nested list describing the attachment status of the firewall's association with a single VPC subnet.
  final pulumi.Input<List<FirewallFirewallStatusSyncStateAttachment>>? attachments;
  /// The Availability Zone where the subnet is configured.
  final pulumi.Input<String>? availabilityZone;

  /// Creates a new [FirewallFirewallStatusSyncState].
  /// [attachments] Nested list describing the attachment status of the firewall's association with a single VPC subnet.
  /// [availabilityZone] The Availability Zone where the subnet is configured.
  FirewallFirewallStatusSyncState({
    this.attachments,
    this.availabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': ?pulumi.Input.mapOptionalInputValue<List<FirewallFirewallStatusSyncStateAttachment>, List<Map<String, dynamic>>>(attachments, (value) => pulumi.Input.encodeList<FirewallFirewallStatusSyncStateAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZone': ?availabilityZone,
    };
  }

  factory FirewallFirewallStatusSyncState.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatusSyncState(
      attachments: map['attachments'] == null ? null : ((pulumi.Input.decodeList<FirewallFirewallStatusSyncStateAttachment>(map['attachments']!, (value) => FirewallFirewallStatusSyncStateAttachment.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
    );
  }
}

