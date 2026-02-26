// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlossaryEntry.
class GetGlossaryEntryArgs {
  final Input<String> glossaryEntryId;
  final Input<String> glossaryId;
  final Input<String> location;
  final Input<String>? project;

  GetGlossaryEntryArgs({
    required this.glossaryEntryId,
    required this.glossaryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['glossaryEntryId'] = glossaryEntryId;
    map['glossaryId'] = glossaryId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlossaryEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetGlossaryEntryArgs(
      glossaryEntryId: Input.asInput<String>(map['glossaryEntryId']),
      glossaryId: Input.asInput<String>(map['glossaryId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
