// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChildInstanceRouteEntryToAttachmentsAttachment {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The first ID of the resource
  final pulumi.Input<String> childInstanceRouteTableId;
  /// DestinationCidrBlock
  final pulumi.Input<String> destinationCidrBlock;
  /// The ID of the resource. The value is formulated as `<cen_id>:<child_instance_route_table_id>:<transit_router_attachment_id>:<destination_cidr_block>`.
  final pulumi.Input<String> id;
  /// ServiceType
  final pulumi.Input<String> serviceType;
  /// The status of the resource
  final pulumi.Input<String> status;
  /// TransitRouterAttachmentId
  final pulumi.Input<String> transitRouterAttachmentId;

  /// Creates a new [GetChildInstanceRouteEntryToAttachmentsAttachment].
  /// [cenId] The ID of the CEN instance.
  /// [childInstanceRouteTableId] The first ID of the resource
  /// [destinationCidrBlock] DestinationCidrBlock
  /// [id] The ID of the resource. The value is formulated as `<cen_id>:<child_instance_route_table_id>:<transit_router_attachment_id>:<destination_cidr_block>`.
  /// [serviceType] ServiceType
  /// [status] The status of the resource
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  GetChildInstanceRouteEntryToAttachmentsAttachment({
    required this.cenId,
    required this.childInstanceRouteTableId,
    required this.destinationCidrBlock,
    required this.id,
    required this.serviceType,
    required this.status,
    required this.transitRouterAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'childInstanceRouteTableId': childInstanceRouteTableId,
      'destinationCidrBlock': destinationCidrBlock,
      'id': id,
      'serviceType': serviceType,
      'status': status,
      'transitRouterAttachmentId': transitRouterAttachmentId,
    };
  }

  factory GetChildInstanceRouteEntryToAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetChildInstanceRouteEntryToAttachmentsAttachment(
      cenId: (map['cenId'] as String).input(),
      childInstanceRouteTableId: (map['childInstanceRouteTableId'] as String).input(),
      destinationCidrBlock: (map['destinationCidrBlock'] as String).input(),
      id: (map['id'] as String).input(),
      serviceType: (map['serviceType'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
    );
  }
}

