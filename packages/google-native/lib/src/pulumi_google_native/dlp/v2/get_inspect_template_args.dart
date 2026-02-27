// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInspectTemplate.
class GetInspectTemplateArgs {
  final Input<String> inspectTemplateId;
  final Input<String> location;
  final Input<String>? project;

  GetInspectTemplateArgs({
    required this.inspectTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inspectTemplateId'] = inspectTemplateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetInspectTemplateArgs(
      inspectTemplateId: Input.asInput<String>(map['inspectTemplateId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
