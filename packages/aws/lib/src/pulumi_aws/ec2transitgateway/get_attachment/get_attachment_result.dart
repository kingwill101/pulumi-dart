// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_attachment_filter/get_attachment_filter.dart';

/// Result data returned by getAttachment.
class GetAttachmentResult {
  /// ARN of the attachment.
  final String arn;

  /// The state of the association (see [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachmentAssociation.html) for valid values).
  final String associationState;

  /// The ID of the route table for the transit gateway.
  final String associationTransitGatewayRouteTableId;
  final List<GetAttachmentFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// ID of the resource.
  final String resourceId;

  /// ID of the AWS account that owns the resource.
  final String resourceOwnerId;

  /// Resource type.
  final String resourceType;

  /// Attachment state.
  final String state;

  /// Key-value tags for the attachment.
  final Map<String, String> tags;
  final String transitGatewayAttachmentId;

  /// ID of the transit gateway.
  final String transitGatewayId;

  /// The ID of the AWS account that owns the transit gateway.
  final String transitGatewayOwnerId;

  GetAttachmentResult({
    required this.arn,
    required this.associationState,
    required this.associationTransitGatewayRouteTableId,
    this.filters,
    required this.id,
    required this.region,
    required this.resourceId,
    required this.resourceOwnerId,
    required this.resourceType,
    required this.state,
    required this.tags,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayId,
    required this.transitGatewayOwnerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['associationState'] = associationState;
    map['associationTransitGatewayRouteTableId'] =
        associationTransitGatewayRouteTableId;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetAttachmentFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    map['resourceId'] = resourceId;
    map['resourceOwnerId'] = resourceOwnerId;
    map['resourceType'] = resourceType;
    map['state'] = state;
    map['tags'] = tags;
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    map['transitGatewayId'] = transitGatewayId;
    map['transitGatewayOwnerId'] = transitGatewayOwnerId;
    return map;
  }

  factory GetAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetAttachmentResult(
      arn: map['arn'] as String,
      associationState: map['associationState'] as String,
      associationTransitGatewayRouteTableId:
          map['associationTransitGatewayRouteTableId'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAttachmentFilter>(
              map['filters'],
              (value) => GetAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      resourceId: map['resourceId'] as String,
      resourceOwnerId: map['resourceOwnerId'] as String,
      resourceType: map['resourceType'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
      transitGatewayOwnerId: map['transitGatewayOwnerId'] as String,
    );
  }
}
