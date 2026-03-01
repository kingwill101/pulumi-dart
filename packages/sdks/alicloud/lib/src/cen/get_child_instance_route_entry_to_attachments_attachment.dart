// ignore_for_file: unused_element, unnecessary_cast


class GetChildInstanceRouteEntryToAttachmentsAttachment {
  /// The ID of the CEN instance.
  final String cenId;
  /// The first ID of the resource
  final String childInstanceRouteTableId;
  /// DestinationCidrBlock
  final String destinationCidrBlock;
  /// The ID of the resource. The value is formulated as `<cen_id>:<child_instance_route_table_id>:<transit_router_attachment_id>:<destination_cidr_block>`.
  final String id;
  /// ServiceType
  final String serviceType;
  /// The status of the resource
  final String status;
  /// TransitRouterAttachmentId
  final String transitRouterAttachmentId;

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
      cenId: map['cenId'] as String,
      childInstanceRouteTableId: map['childInstanceRouteTableId'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      id: map['id'] as String,
      serviceType: map['serviceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
    );
  }
}

