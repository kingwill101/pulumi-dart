// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_instance_attachments_get_instance_attachments_args_doc}
/// Arguments for getInstanceAttachments.
/// {@endtemplate}
/// {@macro pulumi_cen_get_instance_attachments_get_instance_attachments_args_doc}
class GetInstanceAttachmentsArgs {
  /// The region to which the network to be queried belongs.
  final pulumi.Input<String>? childInstanceRegionId;

  /// The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  final pulumi.Input<String>? childInstanceType;

  /// The ID of the CEN instance.
  final pulumi.Input<String> instanceId;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The status of the Cen Child Instance Attachment. Valid value: `Attaching`, `Attached` and `Aetaching`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetInstanceAttachmentsArgs].
  /// [childInstanceRegionId] The region to which the network to be queried belongs.
  /// [childInstanceType] The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  /// [instanceId] The ID of the CEN instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Cen Child Instance Attachment. Valid value: `Attaching`, `Attached` and `Aetaching`.
  GetInstanceAttachmentsArgs({
    this.childInstanceRegionId,
    this.childInstanceType,
    required this.instanceId,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childInstanceRegionId': ?childInstanceRegionId,
      'childInstanceType': ?childInstanceType,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetInstanceAttachmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentsArgs(
      childInstanceRegionId: (() {
        final guardedValue = map['childInstanceRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      childInstanceType: (() {
        final guardedValue = map['childInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
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
