// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPage.
class GetPageArgs {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String> pageId;
  final pulumi.Input<String>? project;

  GetPageArgs({
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

  factory GetPageArgs.fromMap(Map<String, dynamic> map) {
    return GetPageArgs(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      flowId: pulumi.Input.asInput<String>(map['flowId']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      pageId: pulumi.Input.asInput<String>(map['pageId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
