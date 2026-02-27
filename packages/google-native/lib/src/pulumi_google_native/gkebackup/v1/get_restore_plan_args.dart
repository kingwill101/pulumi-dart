// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRestorePlan.
class GetRestorePlanArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restorePlanId;

  GetRestorePlanArgs({
    required this.location,
    this.project,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['restorePlanId'] = restorePlanId;
    return map;
  }

  factory GetRestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      restorePlanId: pulumi.Input.asInput<String>(map['restorePlanId']),
    );
  }
}
