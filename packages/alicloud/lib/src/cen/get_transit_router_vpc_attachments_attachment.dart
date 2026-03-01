// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_vpc_attachments_attachment_zone_mapping.dart';

class GetTransitRouterVpcAttachmentsAttachment {
  /// (Available since v1.224.0) Whether the transit router is automatically published to the VPC instance.
  final bool autoPublishRouteEnabled;
  /// The ID of the CEN instance.
  final String cenId;
  final String id;
  /// The payment type of the resource.
  final String paymentType;
  /// The resource type of the Transit Router VPC Attachment.
  final String resourceType;
  /// The status of the Transit Router VPC Attachment. Valid Values: `Attached`, `Attaching`, `Detaching`.
  final String status;
  /// The description of the Transit Router VPC Attachment.
  final String transitRouterAttachmentDescription;
  /// The ID of the Transit Router VPC Attachment.
  final String transitRouterAttachmentId;
  /// The name of the Transit Router VPC Attachment.
  final String transitRouterAttachmentName;
  /// The ID of the transit router.
  final String transitRouterId;
  /// The ID of the VPC.
  final String vpcId;
  /// The Owner ID of the VPC.
  final String vpcOwnerId;
  /// The list of zone mapping of the VPC.
  final List<GetTransitRouterVpcAttachmentsAttachmentZoneMapping> zoneMappings;

  /// Creates a new [GetTransitRouterVpcAttachmentsAttachment].
  /// [autoPublishRouteEnabled] (Available since v1.224.0) Whether the transit router is automatically published to the VPC instance.
  /// [cenId] The ID of the CEN instance.
  /// [id] Required.
  /// [paymentType] The payment type of the resource.
  /// [resourceType] The resource type of the Transit Router VPC Attachment.
  /// [status] The status of the Transit Router VPC Attachment. Valid Values: `Attached`, `Attaching`, `Detaching`.
  /// [transitRouterAttachmentDescription] The description of the Transit Router VPC Attachment.
  /// [transitRouterAttachmentId] The ID of the Transit Router VPC Attachment.
  /// [transitRouterAttachmentName] The name of the Transit Router VPC Attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vpcId] The ID of the VPC.
  /// [vpcOwnerId] The Owner ID of the VPC.
  /// [zoneMappings] The list of zone mapping of the VPC.
  GetTransitRouterVpcAttachmentsAttachment({
    required this.autoPublishRouteEnabled,
    required this.cenId,
    required this.id,
    required this.paymentType,
    required this.resourceType,
    required this.status,
    required this.transitRouterAttachmentDescription,
    required this.transitRouterAttachmentId,
    required this.transitRouterAttachmentName,
    required this.transitRouterId,
    required this.vpcId,
    required this.vpcOwnerId,
    required this.zoneMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': autoPublishRouteEnabled,
      'cenId': cenId,
      'id': id,
      'paymentType': paymentType,
      'resourceType': resourceType,
      'status': status,
      'transitRouterAttachmentDescription': transitRouterAttachmentDescription,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterAttachmentName': transitRouterAttachmentName,
      'transitRouterId': transitRouterId,
      'vpcId': vpcId,
      'vpcOwnerId': vpcOwnerId,
      'zoneMappings': pulumi.Input.encodeList<GetTransitRouterVpcAttachmentsAttachmentZoneMapping, Map<String, dynamic>>(zoneMappings, (value) => value.toMap()),
    };
  }

  factory GetTransitRouterVpcAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpcAttachmentsAttachment(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] as bool,
      cenId: map['cenId'] as String,
      id: map['id'] as String,
      paymentType: map['paymentType'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterAttachmentName: map['transitRouterAttachmentName'] as String,
      transitRouterId: map['transitRouterId'] as String,
      vpcId: map['vpcId'] as String,
      vpcOwnerId: map['vpcOwnerId'] as String,
      zoneMappings: pulumi.Input.decodeList<GetTransitRouterVpcAttachmentsAttachmentZoneMapping>(map['zoneMappings'], (value) => GetTransitRouterVpcAttachmentsAttachmentZoneMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

