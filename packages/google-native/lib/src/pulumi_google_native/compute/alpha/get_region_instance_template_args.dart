// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionInstanceTemplate.
class GetRegionInstanceTemplateArgs {
  final Input<String> instanceTemplate;
  final Input<String>? project;
  final Input<String> region;
  final Input<String>? view;

  GetRegionInstanceTemplateArgs({
    required this.instanceTemplate,
    this.project,
    required this.region,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceTemplate'] = instanceTemplate;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetRegionInstanceTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateArgs(
      instanceTemplate: Input.asInput<String>(map['instanceTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
