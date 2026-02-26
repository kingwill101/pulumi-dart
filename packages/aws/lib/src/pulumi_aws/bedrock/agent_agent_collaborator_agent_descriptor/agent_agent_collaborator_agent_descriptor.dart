// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentCollaboratorAgentDescriptor {
  /// ARN of the Alias of an Agent to use as the collaborator.
  final String aliasArn;

  AgentAgentCollaboratorAgentDescriptor({
    required this.aliasArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aliasArn'] = aliasArn;
    return map;
  }

  factory AgentAgentCollaboratorAgentDescriptor.fromMap(
      Map<String, dynamic> map) {
    return AgentAgentCollaboratorAgentDescriptor(
      aliasArn: map['aliasArn'] as String,
    );
  }
}
