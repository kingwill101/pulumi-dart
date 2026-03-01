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
    pulumi.Output<int>? cenOwnerId,
    pulumi.Output<String>? childInstanceId,
    pulumi.Output<int>? childInstanceOwnerId,
    pulumi.Output<String>? childInstanceRegionId,
    pulumi.Output<String>? childInstanceType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
  }) :
      cenOwnerId = pulumi.Input.asOptionalInput<int>(cenOwnerId),
      childInstanceId = pulumi.Input.asOptionalInput<String>(childInstanceId),
      childInstanceOwnerId = pulumi.Input.asOptionalInput<int>(childInstanceOwnerId),
      childInstanceRegionId = pulumi.Input.asOptionalInput<String>(childInstanceRegionId),
      childInstanceType = pulumi.Input.asOptionalInput<String>(childInstanceType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      cenOwnerId: map['cenOwnerId'] == null ? null : pulumi.Output.create<int>(map['cenOwnerId'] as int),
      childInstanceId: map['childInstanceId'] == null ? null : pulumi.Output.create<String>(map['childInstanceId'] as String),
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : pulumi.Output.create<int>(map['childInstanceOwnerId'] as int),
      childInstanceRegionId: map['childInstanceRegionId'] == null ? null : pulumi.Output.create<String>(map['childInstanceRegionId'] as String),
      childInstanceType: map['childInstanceType'] == null ? null : pulumi.Output.create<String>(map['childInstanceType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

