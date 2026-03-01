// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instance_template_args_doc}
/// Arguments for getInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instance_template_args_doc}
class GetInstanceTemplateArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetInstanceTemplateArgs].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetInstanceTemplateArgs({
    required String instanceTemplate,
    String? project,
    String? view,
  }) : instanceTemplate = pulumi.Input.asInput<String>(instanceTemplate),
       project = pulumi.Input.asOptionalInput<String>(project),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateArgs(
      instanceTemplate: map['instanceTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
