// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_vpc_endpoint_association_status_association_sync_state_attachment.dart';

class VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState {
  /// Nested list describing the attachment status of the firewall's VPC Endpoint Association with a single VPC subnet.
  final pulumi.Input<List<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment>> attachments;
  /// The Availability Zone where the subnet is configured.
  final pulumi.Input<String> availabilityZone;

  /// Creates a new [VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState].
  /// [attachments] Nested list describing the attachment status of the firewall's VPC Endpoint Association with a single VPC subnet.
  /// [availabilityZone] The Availability Zone where the subnet is configured.
  VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState({
    required this.attachments,
    required this.availabilityZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': pulumi.Input.mapInputValue<List<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment>, List<Map<String, dynamic>>>(attachments, (value) => pulumi.Input.encodeList<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZone': availabilityZone,
    };
  }

  factory VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState(
      attachments: (pulumi.Input.decodeList<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment>(map['attachments'], (value) => VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncStateAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
    );
  }
}

