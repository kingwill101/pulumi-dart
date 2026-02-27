// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceSpannerV1Args {
  final pulumi.Input<String>? fieldMask;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetInstanceSpannerV1Args({
    this.fieldMask,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldMaskValue = fieldMask;
    if (fieldMaskValue != null) {
      map['fieldMask'] = fieldMaskValue;
    }
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceSpannerV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceSpannerV1Args(
      fieldMask: pulumi.Input.asOptionalInput<String>(map['fieldMask']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
