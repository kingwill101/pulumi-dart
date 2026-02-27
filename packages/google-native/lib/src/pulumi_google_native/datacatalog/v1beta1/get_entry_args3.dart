// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEntry.
class GetEntryArgs3 {
  final Input<String> entryGroupId;
  final Input<String> entryId;
  final Input<String> location;
  final Input<String>? project;

  GetEntryArgs3({
    required this.entryGroupId,
    required this.entryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryGroupId'] = entryGroupId;
    map['entryId'] = entryId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEntryArgs3.fromMap(Map<String, dynamic> map) {
    return GetEntryArgs3(
      entryGroupId: Input.asInput<String>(map['entryGroupId']),
      entryId: Input.asInput<String>(map['entryId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
