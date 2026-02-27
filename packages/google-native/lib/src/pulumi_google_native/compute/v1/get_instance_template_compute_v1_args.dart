// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceTemplate.
class GetInstanceTemplateComputeV1Args {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;

  GetInstanceTemplateComputeV1Args({
    required this.instanceTemplate,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateComputeV1Args(
      instanceTemplate: pulumi.Input.asInput<String>(map['instanceTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
