// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChildInstanceRouteEntryToAttachment resources.
class ChildInstanceRouteEntryToAttachmentState {
  /// The ID of the CEN instance.
  final pulumi.Input<String>? cenId;

  /// The first ID of the resource
  final pulumi.Input<String>? childInstanceRouteTableId;

  /// DestinationCidrBlock
  final pulumi.Input<String>? destinationCidrBlock;

  /// Whether to perform pre-check on this request, including permission and instance status verification.
  final pulumi.Input<bool>? dryRun;

  /// ServiceType
  final pulumi.Input<String>? serviceType;

  /// The status of the resource
  final pulumi.Input<String>? status;

  /// TransitRouterAttachmentId
  final pulumi.Input<String>? transitRouterAttachmentId;

  /// Creates a new [ChildInstanceRouteEntryToAttachmentState].
  /// [cenId] The ID of the CEN instance.
  /// [childInstanceRouteTableId] The first ID of the resource
  /// [destinationCidrBlock] DestinationCidrBlock
  /// [dryRun] Whether to perform pre-check on this request, including permission and instance status verification.
  /// [serviceType] ServiceType
  /// [status] The status of the resource
  /// [transitRouterAttachmentId] TransitRouterAttachmentId
  ChildInstanceRouteEntryToAttachmentState({
    this.cenId,
    this.childInstanceRouteTableId,
    this.destinationCidrBlock,
    this.dryRun,
    this.serviceType,
    this.status,
    this.transitRouterAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'childInstanceRouteTableId': ?childInstanceRouteTableId,
      'destinationCidrBlock': ?destinationCidrBlock,
      'dryRun': ?dryRun,
      'serviceType': ?serviceType,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
    };
  }

  factory ChildInstanceRouteEntryToAttachmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChildInstanceRouteEntryToAttachmentState(
      cenId: (() {
        final guardedValue = map['cenId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      childInstanceRouteTableId: (() {
        final guardedValue = map['childInstanceRouteTableId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationCidrBlock: (() {
        final guardedValue = map['destinationCidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serviceType: (() {
        final guardedValue = map['serviceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitRouterAttachmentId: (() {
        final guardedValue = map['transitRouterAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
