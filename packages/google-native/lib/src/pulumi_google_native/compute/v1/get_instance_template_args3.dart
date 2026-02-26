// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceTemplate.
class GetInstanceTemplateArgs3 {
  final Input<String> instanceTemplate;
  final Input<String>? project;

  GetInstanceTemplateArgs3({
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

  factory GetInstanceTemplateArgs3.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateArgs3(
      instanceTemplate: Input.asInput<String>(map['instanceTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
