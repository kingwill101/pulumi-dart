// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceBigtableadminV2Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetInstanceBigtableadminV2Args({
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

  factory GetInstanceBigtableadminV2Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceBigtableadminV2Args(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
