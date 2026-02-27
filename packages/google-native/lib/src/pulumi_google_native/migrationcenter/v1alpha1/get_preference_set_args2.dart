// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPreferenceSet.
class GetPreferenceSetArgs2 {
  final Input<String> location;
  final Input<String> preferenceSetId;
  final Input<String>? project;

  GetPreferenceSetArgs2({
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

  factory GetPreferenceSetArgs2.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetArgs2(
      location: Input.asInput<String>(map['location']),
      preferenceSetId: Input.asInput<String>(map['preferenceSetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
