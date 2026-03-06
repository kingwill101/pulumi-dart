// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_vpc_attachments_attachment_zone_mapping.dart';

class GetTransitRouterVpcAttachmentsAttachment {
  /// (Available since v1.224.0) Whether the transit router is automatically published to the VPC instance.
  final pulumi.Input<bool> autoPublishRouteEnabled;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  final pulumi.Input<String> id;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The resource type of the Transit Router VPC Attachment.
  final pulumi.Input<String> resourceType;
  /// The status of the Transit Router VPC Attachment. Valid Values: `Attached`, `Attaching`, `Detaching`.
  final pulumi.Input<String> status;
  /// The description of the Transit Router VPC Attachment.
  final pulumi.Input<String> transitRouterAttachmentDescription;
  /// The ID of the Transit Router VPC Attachment.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The name of the Transit Router VPC Attachment.
  final pulumi.Input<String> transitRouterAttachmentName;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The Owner ID of the VPC.
  final pulumi.Input<String> vpcOwnerId;
  /// The list of zone mapping of the VPC.
  final pulumi.Input<List<GetTransitRouterVpcAttachmentsAttachmentZoneMapping>> zoneMappings;

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
  const GetTransitRouterVpcAttachmentsAttachment({
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
      'zoneMappings': pulumi.Input.mapInputValue<List<GetTransitRouterVpcAttachmentsAttachmentZoneMapping>, List<Map<String, dynamic>>>(zoneMappings, (value) => pulumi.Input.encodeList<GetTransitRouterVpcAttachmentsAttachmentZoneMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTransitRouterVpcAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVpcAttachmentsAttachment(
      autoPublishRouteEnabled: pulumi.Input.fromValue(map['autoPublishRouteEnabled'] as bool),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterAttachmentDescription: pulumi.Input.fromValue(map['transitRouterAttachmentDescription'] as String),
      transitRouterAttachmentId: pulumi.Input.fromValue(map['transitRouterAttachmentId'] as String),
      transitRouterAttachmentName: pulumi.Input.fromValue(map['transitRouterAttachmentName'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcOwnerId: pulumi.Input.fromValue(map['vpcOwnerId'] as String),
      zoneMappings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTransitRouterVpcAttachmentsAttachmentZoneMapping>(map['zoneMappings']!, (value) => GetTransitRouterVpcAttachmentsAttachmentZoneMapping.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

