// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterGrantAttachment resources.
class TransitRouterGrantAttachmentState {
  /// The ID of the Cloud Enterprise Network (CEN) instance to which the transit router belongs.
  final pulumi.Input<String>? cenId;
  /// The ID of the Alibaba Cloud account to which the CEN instance belongs.
  final pulumi.Input<String>? cenOwnerId;
  /// The ID of the network instance.
  final pulumi.Input<String>? instanceId;
  /// The type of the network instance. Valid values: `VPC`, `ExpressConnect`, `VPN`.
  final pulumi.Input<String>? instanceType;
  /// The entity that pays the fees of the network instance. Valid values: `PayByResourceOwner`, `PayByCenOwner`.
  final pulumi.Input<String>? orderType;

  /// Creates a new [TransitRouterGrantAttachmentState].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance to which the transit router belongs.
  /// [cenOwnerId] The ID of the Alibaba Cloud account to which the CEN instance belongs.
  /// [instanceId] The ID of the network instance.
  /// [instanceType] The type of the network instance. Valid values: `VPC`, `ExpressConnect`, `VPN`.
  /// [orderType] The entity that pays the fees of the network instance. Valid values: `PayByResourceOwner`, `PayByCenOwner`.
  TransitRouterGrantAttachmentState({
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? cenOwnerId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? orderType,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      cenOwnerId = pulumi.Input.asOptionalInput<String>(cenOwnerId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      orderType = pulumi.Input.asOptionalInput<String>(orderType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'cenOwnerId': ?cenOwnerId,
      'instanceId': ?instanceId,
      'instanceType': ?instanceType,
      'orderType': ?orderType,
    };
  }

  factory TransitRouterGrantAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitRouterGrantAttachmentState(
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      cenOwnerId: map['cenOwnerId'] == null ? null : pulumi.Output.create<String>(map['cenOwnerId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      orderType: map['orderType'] == null ? null : pulumi.Output.create<String>(map['orderType'] as String),
    );
  }
}

