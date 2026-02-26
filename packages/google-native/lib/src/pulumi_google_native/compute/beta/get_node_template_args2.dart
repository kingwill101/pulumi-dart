// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNodeTemplate.
class GetNodeTemplateArgs2 {
  final Input<String> nodeTemplate;
  final Input<String>? project;
  final Input<String> region;

  GetNodeTemplateArgs2({
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

  factory GetNodeTemplateArgs2.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateArgs2(
      nodeTemplate: Input.asInput<String>(map['nodeTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
