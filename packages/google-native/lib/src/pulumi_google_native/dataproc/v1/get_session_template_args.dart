// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSessionTemplate.
class GetSessionTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sessionTemplateId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sessionTemplateId: pulumi.Input.asInput<String>(map['sessionTemplateId']),
    );
  }
}
