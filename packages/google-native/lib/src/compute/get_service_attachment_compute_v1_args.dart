// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_service_attachment_compute_v1_args_doc}
/// Arguments for getServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_service_attachment_compute_v1_args_doc}
class GetServiceAttachmentComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GetServiceAttachmentComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [serviceAttachment] Required.
  GetServiceAttachmentComputeV1Args({
    String? project,
    required String region,
    required String serviceAttachment,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       serviceAttachment = pulumi.Input.asInput<String>(serviceAttachment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetServiceAttachmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentComputeV1Args(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
