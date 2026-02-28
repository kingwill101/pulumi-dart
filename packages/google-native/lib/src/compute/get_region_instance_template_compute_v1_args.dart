// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_instance_template_compute_v1_args_doc}
/// Arguments for getRegionInstanceTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_instance_template_compute_v1_args_doc}
class GetRegionInstanceTemplateComputeV1Args {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionInstanceTemplateComputeV1Args].
  /// [instanceTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionInstanceTemplateComputeV1Args({
    required String instanceTemplate,
    String? project,
    required String region,
  }) :
      instanceTemplate = pulumi.Input.asInput<String>(instanceTemplate),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceTemplate': instanceTemplate,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionInstanceTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateComputeV1Args(
      instanceTemplate: map['instanceTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

