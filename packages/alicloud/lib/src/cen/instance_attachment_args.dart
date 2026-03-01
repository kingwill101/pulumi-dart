// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_instance_attachment_instance_attachment_args_doc}
/// The set of arguments for InstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_instance_attachment_instance_attachment_args_doc}
class InstanceAttachmentArgs {
  /// The account ID to which the CEN instance belongs.
  ///
  /// ->**NOTE:** Ensure that the child instance is not used in Express Connect.
  final pulumi.Input<int>? cenOwnerId;
  /// The ID of the child instance to attach.
  final pulumi.Input<String> childInstanceId;
  /// The uid of the child instance. Only used when attach a child instance of other account.
  final pulumi.Input<int>? childInstanceOwnerId;
  /// The region ID of the child instance to attach.
  final pulumi.Input<String> childInstanceRegionId;
  /// The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  final pulumi.Input<String> childInstanceType;
  /// The ID of the CEN.
  final pulumi.Input<String> instanceId;

  /// Creates a new [InstanceAttachmentArgs].
  /// [cenOwnerId] The account ID to which the CEN instance belongs.
  /// [childInstanceId] The ID of the child instance to attach.
  /// [childInstanceOwnerId] The uid of the child instance. Only used when attach a child instance of other account.
  /// [childInstanceRegionId] The region ID of the child instance to attach.
  /// [childInstanceType] The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  /// [instanceId] The ID of the CEN.
  InstanceAttachmentArgs({
    int? cenOwnerId,
    required String childInstanceId,
    int? childInstanceOwnerId,
    required String childInstanceRegionId,
    required String childInstanceType,
    required String instanceId,
  }) :
      cenOwnerId = pulumi.Input.asOptionalInput<int>(cenOwnerId),
      childInstanceId = pulumi.Input.asInput<String>(childInstanceId),
      childInstanceOwnerId = pulumi.Input.asOptionalInput<int>(childInstanceOwnerId),
      childInstanceRegionId = pulumi.Input.asInput<String>(childInstanceRegionId),
      childInstanceType = pulumi.Input.asInput<String>(childInstanceType),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenOwnerId': ?cenOwnerId,
      'childInstanceId': childInstanceId,
      'childInstanceOwnerId': ?childInstanceOwnerId,
      'childInstanceRegionId': childInstanceRegionId,
      'childInstanceType': childInstanceType,
      'instanceId': instanceId,
    };
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      cenOwnerId: map['cenOwnerId'] == null ? null : map['cenOwnerId'] as int,
      childInstanceId: map['childInstanceId'] as String,
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : map['childInstanceOwnerId'] as int,
      childInstanceRegionId: map['childInstanceRegionId'] as String,
      childInstanceType: map['childInstanceType'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

