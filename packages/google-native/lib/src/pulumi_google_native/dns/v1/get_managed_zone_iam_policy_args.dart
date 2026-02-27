// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getManagedZoneIamPolicy.
class GetManagedZoneIamPolicyArgs {
  final Input<String> managedZone;
  final Input<String>? project;

  GetManagedZoneIamPolicyArgs({
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetManagedZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneIamPolicyArgs(
      managedZone: Input.asInput<String>(map['managedZone']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
