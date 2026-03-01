// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase {
  /// Whether the knowledge base is deleted
  final bool isDeleted;
  /// Name of the knowledge base
  final String name;
  /// Knowledge base UUID
  final String uuid;

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase].
  /// [isDeleted] Whether the knowledge base is deleted
  /// [name] Name of the knowledge base
  /// [uuid] Knowledge base UUID
  GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase({
    required this.isDeleted,
    required this.name,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDeleted': isDeleted,
      'name': name,
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedKnowledgeBase(
      isDeleted: map['isDeleted'] as bool,
      name: map['name'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

