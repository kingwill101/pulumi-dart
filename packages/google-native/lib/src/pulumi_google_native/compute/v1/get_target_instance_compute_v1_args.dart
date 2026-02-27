// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetInstance.
class GetTargetInstanceComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetInstance;
  final pulumi.Input<String> zone;

  GetTargetInstanceComputeV1Args({
    this.project,
    required this.targetInstance,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetInstance'] = targetInstance;
    map['zone'] = zone;
    return map;
  }

  factory GetTargetInstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetInstance: pulumi.Input.asInput<String>(map['targetInstance']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
