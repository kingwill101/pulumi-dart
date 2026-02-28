// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_service_attachment_args_doc}
/// Arguments for getServiceAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_service_attachment_args_doc}
class GetServiceAttachmentArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [GetServiceAttachmentArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [serviceAttachment] Required.
  GetServiceAttachmentArgs({
    String? project,
    required String region,
    required String serviceAttachment,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        serviceAttachment = pulumi.Input.asInput<String>(serviceAttachment);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory GetServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
