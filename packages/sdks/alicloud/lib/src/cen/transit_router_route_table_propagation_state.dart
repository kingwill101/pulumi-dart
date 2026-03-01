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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterRouteTableId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterRouteTableId = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableId);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

