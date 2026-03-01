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
    pulumi.Output<String>? childInstanceRegionId,
    pulumi.Output<String>? childInstanceType,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      childInstanceRegionId = pulumi.Input.asOptionalInput<String>(childInstanceRegionId),
      childInstanceType = pulumi.Input.asOptionalInput<String>(childInstanceType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      childInstanceRegionId: map['childInstanceRegionId'] == null ? null : pulumi.Output.create<String>(map['childInstanceRegionId'] as String),
      childInstanceType: map['childInstanceType'] == null ? null : pulumi.Output.create<String>(map['childInstanceType'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

