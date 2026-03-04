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
    this.cenId,
    this.cenOwnerId,
    this.instanceId,
    this.instanceType,
    this.orderType,
  });

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
      cenId: (() {
        final guardedValue = map['cenId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cenOwnerId: (() {
        final guardedValue = map['cenOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderType: (() {
        final guardedValue = map['orderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
