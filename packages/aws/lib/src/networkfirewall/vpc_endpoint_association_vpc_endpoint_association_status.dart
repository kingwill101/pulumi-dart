// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_vpc_endpoint_association_status_association_sync_state.dart';

class VpcEndpointAssociationVpcEndpointAssociationStatus {
  final List<
          VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState>
      associationSyncStates;

  /// Creates a new [VpcEndpointAssociationVpcEndpointAssociationStatus].
  /// [associationSyncStates] Required.
  VpcEndpointAssociationVpcEndpointAssociationStatus({
    required this.associationSyncStates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationSyncStates'] = pulumi.Input.encodeList<
        VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState,
        Map<String, dynamic>>(associationSyncStates, (value) => value.toMap());
    return map;
  }

  factory VpcEndpointAssociationVpcEndpointAssociationStatus.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointAssociationVpcEndpointAssociationStatus(
      associationSyncStates: pulumi.Input.decodeList<
              VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState>(
          map['associationSyncStates'],
          (value) =>
              VpcEndpointAssociationVpcEndpointAssociationStatusAssociationSyncState
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
