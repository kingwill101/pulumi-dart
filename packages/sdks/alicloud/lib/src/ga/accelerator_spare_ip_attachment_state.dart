// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AcceleratorSpareIpAttachment resources.
class AcceleratorSpareIpAttachmentState {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String>? acceleratorId;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  final pulumi.Input<String>? spareIp;
  /// The status of the standby CNAME IP address.
  final pulumi.Input<String>? status;

  /// Creates a new [AcceleratorSpareIpAttachmentState].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [dryRun] The dry run.
  /// [spareIp] The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  /// [status] The status of the standby CNAME IP address.
  AcceleratorSpareIpAttachmentState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? spareIp,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      spareIp = pulumi.Input.asOptionalInput<String>(spareIp),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'dryRun': ?dryRun,
      'spareIp': ?spareIp,
      'status': ?status,
    };
  }

  factory AcceleratorSpareIpAttachmentState.fromMap(Map<String, dynamic> map) {
    return AcceleratorSpareIpAttachmentState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      spareIp: map['spareIp'] == null ? null : pulumi.Output.create<String>(map['spareIp'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

