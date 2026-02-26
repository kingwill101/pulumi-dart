// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEntryGroupIamPolicy.
class GetEntryGroupIamPolicyArgs2 {
  final Input<String> entryGroupId;
  final Input<String> location;
  final Input<String>? project;

  GetEntryGroupIamPolicyArgs2({
    required this.entryGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntryGroupIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupIamPolicyArgs2(
      entryGroupId: Input.asInput<String>(map['entryGroupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
