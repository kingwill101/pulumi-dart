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
    required String cenId,
    required String childInstanceRouteTableId,
    required String destinationCidrBlock,
    bool? dryRun,
    required String transitRouterAttachmentId,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      childInstanceRouteTableId = pulumi.Input.asInput<String>(childInstanceRouteTableId),
      destinationCidrBlock = pulumi.Input.asInput<String>(destinationCidrBlock),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      transitRouterAttachmentId = pulumi.Input.asInput<String>(transitRouterAttachmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'childInstanceRouteTableId': childInstanceRouteTableId,
      'destinationCidrBlock': destinationCidrBlock,
      'dryRun': ?dryRun,
      'transitRouterAttachmentId': transitRouterAttachmentId,
    };
  }

  factory ChildInstanceRouteEntryToAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ChildInstanceRouteEntryToAttachmentArgs(
      cenId: map['cenId'] as String,
      childInstanceRouteTableId: map['childInstanceRouteTableId'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
    );
  }
}

