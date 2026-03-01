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
    pulumi.Output<String>? definition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? flowId,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? type,
  }) :
      definition = pulumi.Input.asOptionalInput<String>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      flowId = pulumi.Input.asOptionalInput<String>(flowId),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      definition: map['definition'] == null ? null : pulumi.Output.create<String>(map['definition'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      flowId: map['flowId'] == null ? null : pulumi.Output.create<String>(map['flowId'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

