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

  factory TransitRouterRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteTableAssociationState(
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentId: (() { final guardedValue = map['transitRouterAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableId: (() { final guardedValue = map['transitRouterRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

