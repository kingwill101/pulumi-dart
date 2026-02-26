// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKnowledgeBase.
class GetKnowledgeBaseArgs2 {
  final Input<String> knowledgeBaseId;
  final Input<String> location;
  final Input<String>? project;

  GetKnowledgeBaseArgs2({
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

  factory GetKnowledgeBaseArgs2.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeBaseArgs2(
      knowledgeBaseId: Input.asInput<String>(map['knowledgeBaseId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
