// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_child_instance_route_entry_to_attachments_get_child_instance_route_entry_to_attachments_args_doc}
/// Arguments for getChildInstanceRouteEntryToAttachments.
/// {@endtemplate}
/// {@macro pulumi_cen_get_child_instance_route_entry_to_attachments_get_child_instance_route_entry_to_attachments_args_doc}
class GetChildInstanceRouteEntryToAttachmentsArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;
  /// The first ID of the resource
  final pulumi.Input<String> childInstanceRouteTableId;
  /// Limit search to a list of specific IDs.The value is formulated as `<cen_id>:<child_instance_route_table_id>:<transit_router_attachment_id>:<destination_cidr_block>`.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// ServiceType
  final pulumi.Input<String>? serviceType;
  /// TransitRouterAttachmentId
  final pulumi.Input<String> transitRouterAttachmentId;

  /// Creates a new [GetChildInstanceRouteEntryToAttachmentsArgs].
  /// [cenId] The ID of the CEN instance.
  /// [childInstanceRouteTableId] The first ID of the resource
  /// [ids] Limit search to a list of specific IDs.The value is formulated as `<cen_id>:<child_instance_route_table_id>:<transit_router_attachment_id>:<destination_cidr_block>`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceType] ServiceType
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  GetChildInstanceRouteEntryToAttachmentsArgs({
    this.cenId,
    required this.childInstanceRouteTableId,
    this.ids,
    this.outputFile,
    this.serviceType,
    required this.transitRouterAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'childInstanceRouteTableId': childInstanceRouteTableId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'serviceType': ?serviceType,
      'transitRouterAttachmentId': transitRouterAttachmentId,
    };
  }

  factory GetChildInstanceRouteEntryToAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetChildInstanceRouteEntryToAttachmentsArgs(
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      childInstanceRouteTableId: (map['childInstanceRouteTableId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType'] as String).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
    );
  }
}

