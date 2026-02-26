// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDeidentifyTemplate.
class GetDeidentifyTemplateArgs {
  final Input<String> deidentifyTemplateId;
  final Input<String> location;
  final Input<String>? project;

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
      deidentifyTemplateId: Input.asInput<String>(map['deidentifyTemplateId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
