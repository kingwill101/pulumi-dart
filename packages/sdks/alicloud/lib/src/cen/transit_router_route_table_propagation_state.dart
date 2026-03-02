// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterRouteTablePropagation resources.
class TransitRouterRouteTablePropagationState {
  /// The dry run.
  ///
  /// > **NOTE:** The Zone of CEN has MasterZone and SlaveZone, first zone_id of zone_mapping need be MasterZone. We have a API to describeZones[API](https://help.aliyun.com/document_detail/261356.html)
  final pulumi.Input<bool>? dryRun;
  /// The associating status of the network.
  final pulumi.Input<String>? status;
  /// The ID the transit router attachment.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteTablePropagationState].
  /// [dryRun] The dry run.
  /// [status] The associating status of the network.
  /// [transitRouterAttachmentId] The ID the transit router attachment.
  /// [transitRouterRouteTableId] The ID of the transit router route table.
  TransitRouterRouteTablePropagationState({
    this.dryRun,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
    };
  }

  factory TransitRouterRouteTablePropagationState.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTablePropagationState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId'] as String).input(),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : (map['transitRouterRouteTableId'] as String).input(),
    );
  }
}

