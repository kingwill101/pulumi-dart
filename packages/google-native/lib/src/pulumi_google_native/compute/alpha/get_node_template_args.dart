// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNodeTemplate.
class GetNodeTemplateArgs {
  final Input<String> nodeTemplate;
  final Input<String>? project;
  final Input<String> region;

  GetNodeTemplateArgs({
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

  factory GetNodeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateArgs(
      nodeTemplate: Input.asInput<String>(map['nodeTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
