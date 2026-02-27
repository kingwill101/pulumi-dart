// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionInstanceTemplate.
class GetRegionInstanceTemplateArgs3 {
  final Input<String> instanceTemplate;
  final Input<String>? project;
  final Input<String> region;

  GetRegionInstanceTemplateArgs3({
    required this.instanceTemplate,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionInstanceTemplateArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateArgs3(
      instanceTemplate: Input.asInput<String>(map['instanceTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
