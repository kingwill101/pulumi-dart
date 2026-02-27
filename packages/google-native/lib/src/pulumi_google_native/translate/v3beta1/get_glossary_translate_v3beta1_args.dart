// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlossary.
class GetGlossaryTranslateV3beta1Args {
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetGlossaryTranslateV3beta1Args({
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

  factory GetGlossaryTranslateV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetGlossaryTranslateV3beta1Args(
      glossaryId: pulumi.Input.asInput<String>(map['glossaryId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
