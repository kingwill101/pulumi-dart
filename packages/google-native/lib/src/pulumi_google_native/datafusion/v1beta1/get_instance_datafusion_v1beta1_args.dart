// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceDatafusionV1beta1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetInstanceDatafusionV1beta1Args({
    required this.instanceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceDatafusionV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceDatafusionV1beta1Args(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
