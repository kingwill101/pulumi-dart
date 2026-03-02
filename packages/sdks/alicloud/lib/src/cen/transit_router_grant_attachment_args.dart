// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_grant_attachment_transit_router_grant_attachment_args_doc}
/// The set of arguments for TransitRouterGrantAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_grant_attachment_transit_router_grant_attachment_args_doc}
class TransitRouterGrantAttachmentArgs {
  /// The ID of the Cloud Enterprise Network (CEN) instance to which the transit router belongs.
  final pulumi.Input<String> cenId;
  /// The ID of the Alibaba Cloud account to which the CEN instance belongs.
  final pulumi.Input<String> cenOwnerId;
  /// The ID of the network instance.
  final pulumi.Input<String> instanceId;
  /// The type of the network instance. Valid values: `VPC`, `ExpressConnect`, `VPN`.
  final pulumi.Input<String> instanceType;
  /// The entity that pays the fees of the network instance. Valid values: `PayByResourceOwner`, `PayByCenOwner`.
  final pulumi.Input<String>? orderType;

  /// Creates a new [TransitRouterGrantAttachmentArgs].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance to which the transit router belongs.
  /// [cenOwnerId] The ID of the Alibaba Cloud account to which the CEN instance belongs.
  /// [instanceId] The ID of the network instance.
  /// [instanceType] The type of the network instance. Valid values: `VPC`, `ExpressConnect`, `VPN`.
  /// [orderType] The entity that pays the fees of the network instance. Valid values: `PayByResourceOwner`, `PayByCenOwner`.
  TransitRouterGrantAttachmentArgs({
    required this.cenId,
    required this.cenOwnerId,
    required this.instanceId,
    required this.instanceType,
    this.orderType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'cenOwnerId': cenOwnerId,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'orderType': ?orderType,
    };
  }

  factory TransitRouterGrantAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterGrantAttachmentArgs(
      cenId: (map['cenId'] as String).input(),
      cenOwnerId: (map['cenOwnerId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      orderType: map['orderType'] == null ? null : (map['orderType']! as String).input(),
    );
  }
}

