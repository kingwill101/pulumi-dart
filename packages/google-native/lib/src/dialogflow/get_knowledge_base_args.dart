// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_knowledge_base_args_doc}
/// Arguments for getKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_knowledge_base_args_doc}
class GetKnowledgeBaseArgs {
  final pulumi.Input<String> knowledgeBaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKnowledgeBaseArgs].
  /// [knowledgeBaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetKnowledgeBaseArgs({
    required String knowledgeBaseId,
    required String location,
    String? project,
  })  : knowledgeBaseId = pulumi.Input.asInput<String>(knowledgeBaseId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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

  factory GetKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeBaseArgs(
      knowledgeBaseId: map['knowledgeBaseId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
