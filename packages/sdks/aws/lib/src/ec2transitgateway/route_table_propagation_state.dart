// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteTablePropagation resources.
class RouteTablePropagationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the resource
  final pulumi.Input<String>? resourceId;
  /// Type of the resource
  final pulumi.Input<String>? resourceType;
  /// Identifier of EC2 Transit Gateway Attachment.
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String>? transitGatewayRouteTableId;

  /// Creates a new [RouteTablePropagationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Identifier of the resource
  /// [resourceType] Type of the resource
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment.
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  RouteTablePropagationState({
    this.region,
    this.resourceId,
    this.resourceType,
    this.transitGatewayAttachmentId,
    this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory RouteTablePropagationState.fromMap(Map<String, dynamic> map) {
    return RouteTablePropagationState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceId: map['resourceId'] == null ? null : ((map['resourceId'] as String).input()).input(),
      resourceType: map['resourceType'] == null ? null : ((map['resourceType'] as String).input()).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : ((map['transitGatewayAttachmentId'] as String).input()).input(),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : ((map['transitGatewayRouteTableId'] as String).input()).input(),
    );
  }
}

