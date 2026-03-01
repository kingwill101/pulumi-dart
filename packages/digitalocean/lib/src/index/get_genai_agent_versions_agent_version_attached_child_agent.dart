// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentVersionsAgentVersionAttachedChildAgent {
  /// Name of the child agent
  final String agentName;
  /// Child agent unique identifier
  final String childAgentUuid;
  /// If case
  final String ifCase;
  /// Child agent is deleted
  final bool isDeleted;
  /// Route name
  final String routeName;

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedChildAgent].
  /// [agentName] Name of the child agent
  /// [childAgentUuid] Child agent unique identifier
  /// [ifCase] If case
  /// [isDeleted] Child agent is deleted
  /// [routeName] Route name
  GetGenaiAgentVersionsAgentVersionAttachedChildAgent({
    required this.agentName,
    required this.childAgentUuid,
    required this.ifCase,
    required this.isDeleted,
    required this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': agentName,
      'childAgentUuid': childAgentUuid,
      'ifCase': ifCase,
      'isDeleted': isDeleted,
      'routeName': routeName,
    };
  }

  factory GetGenaiAgentVersionsAgentVersionAttachedChildAgent.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedChildAgent(
      agentName: map['agentName'] as String,
      childAgentUuid: map['childAgentUuid'] as String,
      ifCase: map['ifCase'] as String,
      isDeleted: map['isDeleted'] as bool,
      routeName: map['routeName'] as String,
    );
  }
}

