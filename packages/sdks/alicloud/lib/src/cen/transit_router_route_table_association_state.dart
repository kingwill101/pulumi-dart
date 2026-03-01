// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterRouteTableAssociation resources.
class TransitRouterRouteTableAssociationState {
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  final pulumi.Input<bool>? dryRun;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// TransitRouterAttachmentId
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// TransitRouterRouteTableId
  final pulumi.Input<String>? transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteTableAssociationState].
  /// [dryRun] Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  /// [status] The status of the resource
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  /// [transitRouterRouteTableId] TransitRouterRouteTableId
  TransitRouterRouteTableAssociationState({
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

  factory TransitRouterRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTableAssociationState(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

