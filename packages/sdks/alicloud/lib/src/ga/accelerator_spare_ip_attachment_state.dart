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
    this.acceleratorId,
    this.dryRun,
    this.spareIp,
    this.status,
  });

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
      acceleratorId: map['acceleratorId'] == null ? null : (map['acceleratorId'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      spareIp: map['spareIp'] == null ? null : (map['spareIp'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

