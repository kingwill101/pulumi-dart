// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_certificate_template_args_doc}
/// Arguments for getCertificateTemplate.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_certificate_template_args_doc}
class GetCertificateTemplateArgs {
  final pulumi.Input<String> certificateTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateTemplateArgs].
  /// [certificateTemplateId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCertificateTemplateArgs({
    required String certificateTemplateId,
    required String location,
    String? project,
  })  : certificateTemplateId =
            pulumi.Input.asInput<String>(certificateTemplateId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateTemplateId'] = certificateTemplateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateTemplateArgs(
      certificateTemplateId: map['certificateTemplateId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
