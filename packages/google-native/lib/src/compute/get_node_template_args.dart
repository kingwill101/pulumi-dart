// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_node_template_args_doc}
/// Arguments for getNodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_node_template_args_doc}
class GetNodeTemplateArgs {
  final pulumi.Input<String> nodeTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNodeTemplateArgs].
  /// [nodeTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNodeTemplateArgs({
    required String nodeTemplate,
    String? project,
    required String region,
  }) : nodeTemplate = pulumi.Input.asInput<String>(nodeTemplate),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeTemplate': nodeTemplate,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNodeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateArgs(
      nodeTemplate: map['nodeTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
