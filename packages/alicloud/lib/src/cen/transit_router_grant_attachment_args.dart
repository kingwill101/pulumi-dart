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
    required String cenId,
    required String cenOwnerId,
    required String instanceId,
    required String instanceType,
    String? orderType,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      cenOwnerId = pulumi.Input.asInput<String>(cenOwnerId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      orderType = pulumi.Input.asOptionalInput<String>(orderType);

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
      cenId: map['cenId'] as String,
      cenOwnerId: map['cenOwnerId'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      orderType: map['orderType'] == null ? null : map['orderType'] as String,
    );
  }
}

