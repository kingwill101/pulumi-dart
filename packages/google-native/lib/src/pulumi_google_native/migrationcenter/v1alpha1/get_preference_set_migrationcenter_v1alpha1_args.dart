// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPreferenceSet.
class GetPreferenceSetMigrationcenterV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> preferenceSetId;
  final pulumi.Input<String>? project;

  GetPreferenceSetMigrationcenterV1alpha1Args({
    required this.location,
    required this.preferenceSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['preferenceSetId'] = preferenceSetId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPreferenceSetMigrationcenterV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPreferenceSetMigrationcenterV1alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      preferenceSetId: pulumi.Input.asInput<String>(map['preferenceSetId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
