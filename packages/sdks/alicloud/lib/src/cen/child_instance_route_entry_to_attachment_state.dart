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
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? childInstanceRouteTableId,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? serviceType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterAttachmentId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      childInstanceRouteTableId = pulumi.Input.asOptionalInput<String>(childInstanceRouteTableId),
      destinationCidrBlock = pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      serviceType = pulumi.Input.asOptionalInput<String>(serviceType),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      childInstanceRouteTableId: map['childInstanceRouteTableId'] == null ? null : pulumi.Output.create<String>(map['childInstanceRouteTableId'] as String),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      serviceType: map['serviceType'] == null ? null : pulumi.Output.create<String>(map['serviceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
    );
  }
}

