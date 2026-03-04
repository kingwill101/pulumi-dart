// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_accelerator_spare_ip_attachments_get_accelerator_spare_ip_attachments_args_doc}
/// Arguments for getAcceleratorSpareIpAttachments.
/// {@endtemplate}
/// {@macro pulumi_ga_get_accelerator_spare_ip_attachments_get_accelerator_spare_ip_attachments_args_doc}
class GetAcceleratorSpareIpAttachmentsArgs {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String> acceleratorId;

  /// A list of Accelerator Spare Ip Attachment IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetAcceleratorSpareIpAttachmentsArgs].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [ids] A list of Accelerator Spare Ip Attachment IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the standby CNAME IP address. Valid values: `active`, `inuse`.
  GetAcceleratorSpareIpAttachmentsArgs({
    required this.acceleratorId,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAcceleratorSpareIpAttachmentsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAcceleratorSpareIpAttachmentsArgs(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
