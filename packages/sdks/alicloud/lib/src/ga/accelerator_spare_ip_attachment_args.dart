// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_accelerator_spare_ip_attachment_accelerator_spare_ip_attachment_args_doc}
/// The set of arguments for AcceleratorSpareIpAttachment.
/// {@endtemplate}
/// {@macro pulumi_ga_accelerator_spare_ip_attachment_accelerator_spare_ip_attachment_args_doc}
class AcceleratorSpareIpAttachmentArgs {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String> acceleratorId;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  final pulumi.Input<String> spareIp;

  /// Creates a new [AcceleratorSpareIpAttachmentArgs].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [dryRun] The dry run.
  /// [spareIp] The standby IP address of CNAME. When the acceleration area is abnormal, the traffic is switched to the standby IP address.
  AcceleratorSpareIpAttachmentArgs({
    required this.acceleratorId,
    this.dryRun,
    required this.spareIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'dryRun': ?dryRun,
      'spareIp': spareIp,
    };
  }

  factory AcceleratorSpareIpAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AcceleratorSpareIpAttachmentArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spareIp: pulumi.Input.fromValue(map['spareIp'] as String),
    );
  }
}

