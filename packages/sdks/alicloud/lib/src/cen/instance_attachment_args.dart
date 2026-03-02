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
    this.cenOwnerId,
    required this.childInstanceId,
    this.childInstanceOwnerId,
    required this.childInstanceRegionId,
    required this.childInstanceType,
    required this.instanceId,
  });

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
      cenOwnerId: map['cenOwnerId'] == null ? null : (map['cenOwnerId']! as int).input(),
      childInstanceId: (map['childInstanceId'] as String).input(),
      childInstanceOwnerId: map['childInstanceOwnerId'] == null ? null : (map['childInstanceOwnerId']! as int).input(),
      childInstanceRegionId: (map['childInstanceRegionId'] as String).input(),
      childInstanceType: (map['childInstanceType'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
    );
  }
}

