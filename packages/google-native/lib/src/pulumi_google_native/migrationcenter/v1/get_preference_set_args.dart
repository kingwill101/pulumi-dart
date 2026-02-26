// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPreferenceSet.
class GetPreferenceSetArgs {
  final Input<String> location;
  final Input<String> preferenceSetId;
  final Input<String>? project;

  GetPreferenceSetArgs({
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

  factory GetPreferenceSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPreferenceSetArgs(
      location: Input.asInput<String>(map['location']),
      preferenceSetId: Input.asInput<String>(map['preferenceSetId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
