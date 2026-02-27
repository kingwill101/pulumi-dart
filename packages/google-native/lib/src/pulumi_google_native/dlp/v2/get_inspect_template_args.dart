// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInspectTemplate.
class GetInspectTemplateArgs {
  final pulumi.Input<String> inspectTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      inspectTemplateId: pulumi.Input.asInput<String>(map['inspectTemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
