// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKnowledgeBase.
class GetKnowledgeBaseDialogflowV2beta1Args {
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetKnowledgeBaseDialogflowV2beta1Args({
    required this.knowledgeBaseId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['knowledgeBaseId'] = knowledgeBaseId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKnowledgeBaseDialogflowV2beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetKnowledgeBaseDialogflowV2beta1Args(
      knowledgeBaseId: pulumi.Input.asInput<String>(map['knowledgeBaseId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
