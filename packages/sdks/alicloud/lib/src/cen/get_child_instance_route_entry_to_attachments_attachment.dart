// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChildInstanceRouteEntryToAttachmentsAttachment {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The first ID of the resource
  final pulumi.Input<String> childInstanceRouteTableId;
  /// DestinationCidrBlock
  final pulumi.Input<String> destinationCidrBlock;
  /// The ID of the resource. The value is formulated as `&lt;cen_id&gt;:&lt;child_instance_route_table_id&gt;:&lt;transit_router_attachment_id&gt;:&lt;destination_cidr_block&gt;`.
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
  /// [id] The ID of the resource. The value is formulated as `&lt;cen_id&gt;:&lt;child_instance_route_table_id&gt;:&lt;transit_router_attachment_id&gt;:&lt;destination_cidr_block&gt;`.
  /// [serviceType] ServiceType
  /// [status] The status of the resource
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  const GetChildInstanceRouteEntryToAttachmentsAttachment({
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
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      childInstanceRouteTableId: pulumi.Input.fromValue(map['childInstanceRouteTableId'] as String),
      destinationCidrBlock: pulumi.Input.fromValue(map['destinationCidrBlock'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterAttachmentId: pulumi.Input.fromValue(map['transitRouterAttachmentId'] as String),
    );
  }
}

