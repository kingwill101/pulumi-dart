// ignore_for_file: unused_element, unnecessary_cast

class AgentAgentCollaboratorAgentDescriptor {
  /// ARN of the Alias of an Agent to use as the collaborator.
  final String aliasArn;

  /// Creates a new [AgentAgentCollaboratorAgentDescriptor].
  /// [aliasArn] ARN of the Alias of an Agent to use as the collaborator.
  AgentAgentCollaboratorAgentDescriptor({required this.aliasArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'aliasArn': aliasArn};
  }

  factory AgentAgentCollaboratorAgentDescriptor.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentAgentCollaboratorAgentDescriptor(
      aliasArn: map['aliasArn'] as String,
    );
  }
}
