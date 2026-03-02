// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAttachment resources.
class InstanceAttachmentState {
  /// The account ID to which the CEN instance belongs.
  ///
  /// ->**NOTE:** Ensure that the child instance is not used in Express Connect.
  final pulumi.Input<int>? cenOwnerId;
  /// The ID of the child instance to attach.
  final pulumi.Input<String>? childInstanceId;
  /// The uid of the child instance. Only used when attach a child instance of other account.
  final pulumi.Input<int>? childInstanceOwnerId;
  /// The region ID of the child instance to attach.
  final pulumi.Input<String>? childInstanceRegionId;
  /// The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  final pulumi.Input<String>? childInstanceType;
  /// The ID of the CEN.
  final pulumi.Input<String>? instanceId;
  /// The associating status of the network.
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceAttachmentState].
  /// [cenOwnerId] The account ID to which the CEN instance belongs.
  /// [childInstanceId] The ID of the child instance to attach.
  /// [childInstanceOwnerId] The uid of the child instance. Only used when attach a child instance of other account.
  /// [childInstanceRegionId] The region ID of the child instance to attach.
  /// [childInstanceType] The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  /// [instanceId] The ID of the CEN.
  /// [status] The associating status of the network.
  InstanceAttachmentState({
    this.cenOwnerId,
    this.childInstanceId,
    this.childInstanceOwnerId,
    this.childInstanceRegionId,
    this.childInstanceType,
    this.instanceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenOwnerId': ?cenOwnerId,
      'childInstanceId': ?childInstanceId,
      'childInstanceOwnerId': ?childInstanceOwnerId,
      'childInstanceRegionId': ?childInstanceRegionId,
      'childInstanceType': ?childInstanceType,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory InstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentState(
      cenOwnerId: map['cenOwnerId'] == null ? null : (map['cenOwnerId']! as int).input(),
      childInstanceId: map['childInstanceId'] == null ? null : (map['childInstanceId']! as String).input(),
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : (map['childInstanceOwnerId']! as int).input(),
      childInstanceRegionId: map['childInstanceRegionId'] == null ? null : (map['childInstanceRegionId']! as String).input(),
      childInstanceType: map['childInstanceType'] == null ? null : (map['childInstanceType']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

