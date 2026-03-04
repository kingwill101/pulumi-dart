// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlowsFlow {
  /// The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  final pulumi.Input<String> definition;

  /// The description of the flow.
  final pulumi.Input<String> description;

  /// The unique ID of the flow.
  final pulumi.Input<String> flowId;

  /// The ID of the Flow.
  final pulumi.Input<String> id;

  /// The time when the flow was last modified.
  final pulumi.Input<String> lastModifiedTime;

  /// The name of the flow. The name must be unique in an Alibaba Cloud account.
  final pulumi.Input<String> name;

  /// The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  final pulumi.Input<String> roleArn;

  /// The type of the flow. Set the value to `FDL`.
  final pulumi.Input<String> type;

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
      definition: pulumi.Input.fromValue(map['definition'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifiedTime: pulumi.Input.fromValue(
        map['lastModifiedTime'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
