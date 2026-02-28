// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_template_compute_beta_args_doc}
/// Arguments for getInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_template_compute_beta_args_doc}
class GetInstanceTemplateComputeBetaArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceTemplateComputeBetaArgs].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  GetInstanceTemplateComputeBetaArgs({
    required String instanceTemplate,
    String? project,
  })  : instanceTemplate = pulumi.Input.asInput<String>(instanceTemplate),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateComputeBetaArgs(
      instanceTemplate: map['instanceTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
