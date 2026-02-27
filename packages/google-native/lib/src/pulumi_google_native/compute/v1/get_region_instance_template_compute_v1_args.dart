// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionInstanceTemplate.
class GetRegionInstanceTemplateComputeV1Args {
  final pulumi.Input<String> instanceTemplate;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionInstanceTemplateComputeV1Args({
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

  factory GetRegionInstanceTemplateComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateComputeV1Args(
      instanceTemplate: pulumi.Input.asInput<String>(map['instanceTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
