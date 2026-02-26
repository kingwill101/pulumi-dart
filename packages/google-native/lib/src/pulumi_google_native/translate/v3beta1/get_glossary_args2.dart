// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlossary.
class GetGlossaryArgs2 {
  final Input<String> glossaryId;
  final Input<String> location;
  final Input<String>? project;

  GetGlossaryArgs2({
    required this.glossaryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['glossaryId'] = glossaryId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlossaryArgs2.fromMap(Map<String, dynamic> map) {
    return GetGlossaryArgs2(
      glossaryId: Input.asInput<String>(map['glossaryId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
