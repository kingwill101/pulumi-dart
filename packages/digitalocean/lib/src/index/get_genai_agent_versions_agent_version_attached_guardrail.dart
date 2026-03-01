// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentVersionsAgentVersionAttachedGuardrail {
  /// Whether the guardrail is deleted
  final bool isDeleted;
  /// Name of the guardrail
  final String name;
  /// Guardrail priority
  final int priority;
  /// Guardrail UUID
  final String uuid;

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedGuardrail].
  /// [isDeleted] Whether the guardrail is deleted
  /// [name] Name of the guardrail
  /// [priority] Guardrail priority
  /// [uuid] Guardrail UUID
  GetGenaiAgentVersionsAgentVersionAttachedGuardrail({
    required this.isDeleted,
    required this.name,
    required this.priority,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDeleted': isDeleted,
      'name': name,
      'priority': priority,
      'uuid': uuid,
    };
  }

  factory GetGenaiAgentVersionsAgentVersionAttachedGuardrail.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedGuardrail(
      isDeleted: map['isDeleted'] as bool,
      name: map['name'] as String,
      priority: map['priority'] as int,
      uuid: map['uuid'] as String,
    );
  }
}

