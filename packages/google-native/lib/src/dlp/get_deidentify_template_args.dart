// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_deidentify_template_args_doc}
/// Arguments for getDeidentifyTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_deidentify_template_args_doc}
class GetDeidentifyTemplateArgs {
  final pulumi.Input<String> deidentifyTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDeidentifyTemplateArgs].
  /// [deidentifyTemplateId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDeidentifyTemplateArgs({
    required String deidentifyTemplateId,
    required String location,
    String? project,
  }) : deidentifyTemplateId = pulumi.Input.asInput<String>(
         deidentifyTemplateId,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplateId': deidentifyTemplateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDeidentifyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetDeidentifyTemplateArgs(
      deidentifyTemplateId: map['deidentifyTemplateId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
