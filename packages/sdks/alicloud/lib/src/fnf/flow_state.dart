// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Flow resources.
class FlowState {
  /// The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  final pulumi.Input<String>? definition;
  /// The description of the flow.
  final pulumi.Input<String>? description;
  /// The unique ID of the flow.
  final pulumi.Input<String>? flowId;
  /// The time when the flow was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// The name of the flow. The name must be unique in an Alibaba Cloud account.
  final pulumi.Input<String>? name;
  /// The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  final pulumi.Input<String>? roleArn;
  /// The type of the flow. Valid values are `FDL` or `DEFAULT`.
  final pulumi.Input<String>? type;

  /// Creates a new [FlowState].
  /// [definition] The definition of the flow. It must comply with the Flow Definition Language (FDL) syntax.
  /// [description] The description of the flow.
  /// [flowId] The unique ID of the flow.
  /// [lastModifiedTime] The time when the flow was last modified.
  /// [name] The name of the flow. The name must be unique in an Alibaba Cloud account.
  /// [roleArn] The ARN of the specified RAM role that Serverless Workflow uses to assume the role when Serverless Workflow executes a flow.
  /// [type] The type of the flow. Valid values are `FDL` or `DEFAULT`.
  FlowState({
    this.definition,
    this.description,
    this.flowId,
    this.lastModifiedTime,
    this.name,
    this.roleArn,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?definition,
      'description': ?description,
      'flowId': ?flowId,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'roleArn': ?roleArn,
      'type': ?type,
    };
  }

  factory FlowState.fromMap(Map<String, dynamic> map) {
    return FlowState(
      definition: map['definition'] == null ? null : (map['definition']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flowId: map['flowId'] == null ? null : (map['flowId']! as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

