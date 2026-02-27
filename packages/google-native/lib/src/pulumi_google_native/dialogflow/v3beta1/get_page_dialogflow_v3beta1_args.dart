// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPage.
class GetPageDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String> pageId;
  final pulumi.Input<String>? project;

  GetPageDialogflowV3beta1Args({
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

  factory GetPageDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPageDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      flowId: pulumi.Input.asInput<String>(map['flowId']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asInput<String>(map['location']),
      pageId: pulumi.Input.asInput<String>(map['pageId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
