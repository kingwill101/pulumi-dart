// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPage.
class GetPageArgs2 {
  final Input<String> agentId;
  final Input<String> flowId;
  final Input<String>? languageCode;
  final Input<String> location;
  final Input<String> pageId;
  final Input<String>? project;

  GetPageArgs2({
    required this.agentId,
    required this.flowId,
    this.languageCode,
    required this.location,
    required this.pageId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['flowId'] = flowId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['location'] = location;
    map['pageId'] = pageId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetPageArgs2.fromMap(Map<String, dynamic> map) {
    return GetPageArgs2(
      agentId: Input.asInput<String>(map['agentId']),
      flowId: Input.asInput<String>(map['flowId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asInput<String>(map['location']),
      pageId: Input.asInput<String>(map['pageId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
