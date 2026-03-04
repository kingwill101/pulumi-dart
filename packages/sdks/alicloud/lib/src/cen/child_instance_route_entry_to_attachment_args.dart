// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_child_instance_route_entry_to_attachment_child_instance_route_entry_to_attachment_args_doc}
/// The set of arguments for ChildInstanceRouteEntryToAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_child_instance_route_entry_to_attachment_child_instance_route_entry_to_attachment_args_doc}
class ChildInstanceRouteEntryToAttachmentArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;

  /// The first ID of the resource
  final pulumi.Input<String> childInstanceRouteTableId;

  /// DestinationCidrBlock
  final pulumi.Input<String> destinationCidrBlock;

  /// Whether to perform pre-check on this request, including permission and instance status verification.
  final pulumi.Input<bool>? dryRun;

  /// TransitRouterAttachmentId
  final pulumi.Input<String> transitRouterAttachmentId;

  /// Creates a new [ChildInstanceRouteEntryToAttachmentArgs].
  /// [cenId] The ID of the CEN instance.
  /// [childInstanceRouteTableId] The first ID of the resource
  /// [destinationCidrBlock] DestinationCidrBlock
  /// [dryRun] Whether to perform pre-check on this request, including permission and instance status verification.
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  ChildInstanceRouteEntryToAttachmentArgs({
    required this.cenId,
    required this.childInstanceRouteTableId,
    required this.destinationCidrBlock,
    this.dryRun,
    required this.transitRouterAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'childInstanceRouteTableId': childInstanceRouteTableId,
      'destinationCidrBlock': destinationCidrBlock,
      'dryRun': ?dryRun,
      'transitRouterAttachmentId': transitRouterAttachmentId,
    };
  }

  factory ChildInstanceRouteEntryToAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChildInstanceRouteEntryToAttachmentArgs(
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      childInstanceRouteTableId: pulumi.Input.fromValue(
        map['childInstanceRouteTableId'] as String,
      ),
      destinationCidrBlock: pulumi.Input.fromValue(
        map['destinationCidrBlock'] as String,
      ),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      transitRouterAttachmentId: pulumi.Input.fromValue(
        map['transitRouterAttachmentId'] as String,
      ),
    );
  }
}
