// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceTemplate.
class GetInstanceTemplateComputeBetaArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;

  GetInstanceTemplateComputeBetaArgs({
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

  factory GetInstanceTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateComputeBetaArgs(
      instanceTemplate: pulumi.Input.asInput<String>(map['instanceTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
