// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSessionTemplate.
class GetSessionTemplateArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sessionTemplateId;

  GetSessionTemplateArgs({
    required this.location,
    this.project,
    required this.sessionTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionTemplateId'] = sessionTemplateId;
    return map;
  }

  factory GetSessionTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetSessionTemplateArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionTemplateId: Input.asInput<String>(map['sessionTemplateId']),
    );
  }
}
