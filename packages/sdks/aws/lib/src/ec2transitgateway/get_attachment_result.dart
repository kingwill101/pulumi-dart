// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attachment_filter.dart';

/// Result data returned by getAttachment.
class GetAttachmentResult {
  /// ARN of the attachment.
  final String? arn;
  /// The state of the association (see [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachmentAssociation.html) for valid values).
  final String? associationState;
  /// The ID of the route table for the transit gateway.
  final String? associationTransitGatewayRouteTableId;
  final List<GetAttachmentFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// ID of the resource.
  final String? resourceId;
  /// ID of the AWS account that owns the resource.
  final String? resourceOwnerId;
  /// Resource type.
  final String? resourceType;
  /// Attachment state.
  final String? state;
  /// Key-value tags for the attachment.
  final Map<String, String>? tags;
  final String? transitGatewayAttachmentId;
  /// ID of the transit gateway.
  final String? transitGatewayId;
  /// The ID of the AWS account that owns the transit gateway.
  final String? transitGatewayOwnerId;

  /// Creates a new [GetAttachmentResult].
  /// [arn] ARN of the attachment.
  /// [associationState] The state of the association (see [the underlying AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachmentAssociation.html) for valid values).
  /// [associationTransitGatewayRouteTableId] The ID of the route table for the transit gateway.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [resourceId] ID of the resource.
  /// [resourceOwnerId] ID of the AWS account that owns the resource.
  /// [resourceType] Resource type.
  /// [state] Attachment state.
  /// [tags] Key-value tags for the attachment.
  /// [transitGatewayAttachmentId] Optional.
  /// [transitGatewayId] ID of the transit gateway.
  /// [transitGatewayOwnerId] The ID of the AWS account that owns the transit gateway.
  const GetAttachmentResult({
    this.arn,
    this.associationState,
    this.associationTransitGatewayRouteTableId,
    this.filters,
    this.id,
    this.region,
    this.resourceId,
    this.resourceOwnerId,
    this.resourceType,
    this.state,
    this.tags,
    this.transitGatewayAttachmentId,
    this.transitGatewayId,
    this.transitGatewayOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associationState': ?associationState,
      'associationTransitGatewayRouteTableId': ?associationTransitGatewayRouteTableId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAttachmentFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'resourceId': ?resourceId,
      'resourceOwnerId': ?resourceOwnerId,
      'resourceType': ?resourceType,
      'state': ?state,
      'tags': ?tags,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayId': ?transitGatewayId,
      'transitGatewayOwnerId': ?transitGatewayOwnerId,
    };
  }

  factory GetAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetAttachmentResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associationState: (() { final guardedValue = map['associationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associationTransitGatewayRouteTableId: (() { final guardedValue = map['associationTransitGatewayRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAttachmentFilter>(guardedValue, (value) => GetAttachmentFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceOwnerId: (() { final guardedValue = map['resourceOwnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayOwnerId: (() { final guardedValue = map['transitGatewayOwnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
