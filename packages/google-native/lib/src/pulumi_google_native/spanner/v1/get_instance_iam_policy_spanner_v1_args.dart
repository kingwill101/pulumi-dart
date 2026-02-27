// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceIamPolicy.
class GetInstanceIamPolicySpannerV1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetInstanceIamPolicySpannerV1Args({
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceIamPolicySpannerV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicySpannerV1Args(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
