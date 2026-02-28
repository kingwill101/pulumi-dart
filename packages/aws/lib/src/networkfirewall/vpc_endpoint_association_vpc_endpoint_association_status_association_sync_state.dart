// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_vpc_endpoint_association_status_association_sync_state_attachment.dart';

class VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState {
  /// Nested list describing the attachment status of the firewall's VPC Endpoint Association with a single VPC subnet.
  final List<
          VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment>
      attachments;

  /// The Availability Zone where the subnet is configured.
  final String availabilityZone;

  /// Creates a new [VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState].
  /// [attachments] Nested list describing the attachment status of the firewall's VPC Endpoint Association with a single VPC subnet.
  /// [availabilityZone] The Availability Zone where the subnet is configured.
  VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState({
    required this.attachments,
    required this.availabilityZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachments'] = pulumi.Input.encodeList<
        VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment,
        Map<String, dynamic>>(attachments, (value) => value.toMap());
    map['availabilityZone'] = availabilityZone;
    return map;
  }

  factory VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState(
      attachments: pulumi.Input.decodeList<
              VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment>(
          map['attachments'],
          (value) =>
              VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment
                  .fromMap((value as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] as String,
    );
  }
}
