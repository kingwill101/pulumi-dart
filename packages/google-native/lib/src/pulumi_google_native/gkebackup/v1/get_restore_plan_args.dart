// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRestorePlan.
class GetRestorePlanArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> restorePlanId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      restorePlanId: Input.asInput<String>(map['restorePlanId']),
    );
  }
}
