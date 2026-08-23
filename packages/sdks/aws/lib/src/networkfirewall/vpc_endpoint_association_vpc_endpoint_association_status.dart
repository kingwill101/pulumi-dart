// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_vpc_endpoint_association_status_association_sync_state.dart';

class VpcEndpointAssociationVpcEndpointAssociationStatus {
  /// Set of subnets configured for use by the VPC Endpoint Association.
  final pulumi.Input<List<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState>> associationSyncStates;

  /// Creates a new [VpcEndpointAssociationVpcEndpointAssociationStatus].
  /// [associationSyncStates] Set of subnets configured for use by the VPC Endpoint Association.
  const VpcEndpointAssociationVpcEndpointAssociationStatus({
    required this.associationSyncStates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationSyncStates': pulumi.Input.mapInputValue<List<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState>, List<Map<String, dynamic>>>(associationSyncStates, (value) => pulumi.Input.encodeList<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpcEndpointAssociationVpcEndpointAssociationStatus.fromMap(Map<String, dynamic> map) {
    return VpcEndpointAssociationVpcEndpointAssociationStatus(
      associationSyncStates: pulumi.Input.fromValue(pulumi.Input.decodeList<VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState>(map['associationSyncStates']!, (value) => VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
