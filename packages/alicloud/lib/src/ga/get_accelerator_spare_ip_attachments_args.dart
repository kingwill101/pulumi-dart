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
    required String acceleratorId,
    List<String>? ids,
    String? outputFile,
    String? status,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAcceleratorSpareIpAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorSpareIpAttachmentsArgs(
      acceleratorId: map['acceleratorId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

