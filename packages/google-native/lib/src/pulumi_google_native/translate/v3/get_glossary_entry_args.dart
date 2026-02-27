// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlossaryEntry.
class GetGlossaryEntryArgs {
  final pulumi.Input<String> glossaryEntryId;
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      glossaryEntryId: pulumi.Input.asInput<String>(map['glossaryEntryId']),
      glossaryId: pulumi.Input.asInput<String>(map['glossaryId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
