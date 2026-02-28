// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_node_template_compute_beta_args_doc}
/// Arguments for getNodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_node_template_compute_beta_args_doc}
class GetNodeTemplateComputeBetaArgs {
  final pulumi.Input<String> nodeTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetNodeTemplateComputeBetaArgs].
  /// [nodeTemplate] Required.
  /// [project] Optional.
  /// [region] Required.
  GetNodeTemplateComputeBetaArgs({
    required String nodeTemplate,
    String? project,
    required String region,
  }) :
      nodeTemplate = pulumi.Input.asInput<String>(nodeTemplate),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeTemplate': nodeTemplate,
      'project': ?project,
      'region': region,
    };
  }

  factory GetNodeTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateComputeBetaArgs(
      nodeTemplate: map['nodeTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

