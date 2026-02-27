// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNodeTemplate.
class GetNodeTemplateComputeBetaArgs {
  final pulumi.Input<String> nodeTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetNodeTemplateComputeBetaArgs({
    required this.nodeTemplate,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeTemplate'] = nodeTemplate;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetNodeTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateComputeBetaArgs(
      nodeTemplate: pulumi.Input.asInput<String>(map['nodeTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
