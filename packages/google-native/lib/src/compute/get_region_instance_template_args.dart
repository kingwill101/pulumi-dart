// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_instance_template_args_doc}
/// Arguments for getRegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_instance_template_args_doc}
class GetRegionInstanceTemplateArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String>? view;

  /// Creates a new [GetRegionInstanceTemplateArgs].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  /// [view] Optional.
  GetRegionInstanceTemplateArgs({
    required String instanceTemplate,
    String? project,
    required String region,
    String? view,
  }) : instanceTemplate = pulumi.Input.asInput<String>(instanceTemplate),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
      'region': region,
      'view': ?view,
    };
  }

  factory GetRegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateArgs(
      instanceTemplate: map['instanceTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
