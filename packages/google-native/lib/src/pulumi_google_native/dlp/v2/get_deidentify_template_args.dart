// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDeidentifyTemplate.
class GetDeidentifyTemplateArgs {
  final pulumi.Input<String> deidentifyTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDeidentifyTemplateArgs({
    required this.deidentifyTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deidentifyTemplateId'] = deidentifyTemplateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDeidentifyTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetDeidentifyTemplateArgs(
      deidentifyTemplateId:
          pulumi.Input.asInput<String>(map['deidentifyTemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
