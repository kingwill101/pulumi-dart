// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionInstanceTemplate.
class GetRegionInstanceTemplateComputeBetaArgs {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionInstanceTemplateComputeBetaArgs({
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

  factory GetRegionInstanceTemplateComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateComputeBetaArgs(
      instanceTemplate: pulumi.Input.asInput<String>(map['instanceTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
