// ignore_for_file: unused_element, unnecessary_cast


class GetFlowsFlow {
  /// The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  final String definition;
  /// The description of the flow.
  final String description;
  /// The unique ID of the flow.
  final String flowId;
  /// The ID of the Flow.
  final String id;
  /// The time when the flow was last modified.
  final String lastModifiedTime;
  /// The name of the flow. The name must be unique in an Alibaba Cloud account.
  final String name;
  /// The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  final String roleArn;
  /// The type of the flow. Set the value to `FDL`.
  final String type;

  /// Creates a new [GetFlowsFlow].
  /// [definition] The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  /// [description] The description of the flow.
  /// [flowId] The unique ID of the flow.
  /// [id] The ID of the Flow.
  /// [lastModifiedTime] The time when the flow was last modified.
  /// [name] The name of the flow. The name must be unique in an Alibaba Cloud account.
  /// [roleArn] The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  /// [type] The type of the flow. Set the value to `FDL`.
  GetFlowsFlow({
    required this.definition,
    required this.description,
    required this.flowId,
    required this.id,
    required this.lastModifiedTime,
    required this.name,
    required this.roleArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'description': description,
      'flowId': flowId,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'roleArn': roleArn,
      'type': type,
    };
  }

  factory GetFlowsFlow.fromMap(Map<String, dynamic> map) {
    return GetFlowsFlow(
      definition: map['definition'] as String,
      description: map['description'] as String,
      flowId: map['flowId'] as String,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      roleArn: map['roleArn'] as String,
      type: map['type'] as String,
    );
  }
}

