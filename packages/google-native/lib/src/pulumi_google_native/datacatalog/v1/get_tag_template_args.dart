// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTagTemplate.
class GetTagTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tagTemplateId;

  GetTagTemplateArgs({
    required this.location,
    this.project,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tagTemplateId'] = tagTemplateId;
    return map;
  }

  factory GetTagTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tagTemplateId: pulumi.Input.asInput<String>(map['tagTemplateId']),
    );
  }
}
