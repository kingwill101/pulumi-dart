// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTagTemplate.
class GetTagTemplateArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tagTemplateId;

  GetTagTemplateArgs2({
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

  factory GetTagTemplateArgs2.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tagTemplateId: Input.asInput<String>(map['tagTemplateId']),
    );
  }
}
