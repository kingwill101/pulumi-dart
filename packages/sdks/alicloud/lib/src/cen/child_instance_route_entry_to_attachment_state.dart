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

  factory ChildInstanceRouteEntryToAttachmentState.fromMap(Map<String, dynamic> map) {
    return ChildInstanceRouteEntryToAttachmentState(
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      childInstanceRouteTableId: map['childInstanceRouteTableId'] == null ? null : (map['childInstanceRouteTableId'] as String).input(),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : (map['destinationCidrBlock'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId'] as String).input(),
    );
  }
}

