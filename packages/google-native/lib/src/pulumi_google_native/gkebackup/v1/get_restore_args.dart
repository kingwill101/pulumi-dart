// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRestore.
class GetRestoreArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> restoreId;
  final Input<String> restorePlanId;

  GetRestoreArgs({
    required this.location,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['restoreId'] = restoreId;
    map['restorePlanId'] = restorePlanId;
    return map;
  }

  factory GetRestoreArgs.fromMap(Map<String, dynamic> map) {
    return GetRestoreArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      restoreId: Input.asInput<String>(map['restoreId']),
      restorePlanId: Input.asInput<String>(map['restorePlanId']),
    );
  }
}
