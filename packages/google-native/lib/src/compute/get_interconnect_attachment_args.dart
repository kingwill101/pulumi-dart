// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_interconnect_attachment_args_doc}
/// Arguments for getInterconnectAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_interconnect_attachment_args_doc}
class GetInterconnectAttachmentArgs {
  final pulumi.Input<String> interconnectAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetInterconnectAttachmentArgs].
  /// [interconnectAttachment] Required.
  /// [project] Optional.
  /// [region] Required.
  GetInterconnectAttachmentArgs({
    required String interconnectAttachment,
    String? project,
    required String region,
  }) : interconnectAttachment = pulumi.Input.asInput<String>(
         interconnectAttachment,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interconnectAttachment': interconnectAttachment,
      'project': ?project,
      'region': region,
    };
  }

  factory GetInterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectAttachmentArgs(
      interconnectAttachment: map['interconnectAttachment'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
